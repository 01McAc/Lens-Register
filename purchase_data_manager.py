from PySide6 import QtCore
from PySide6.QtSql import QSqlTableModel
from PySide6.QtWidgets import QDataWidgetMapper, QMessageBox, QLineEdit, QPlainTextEdit

class PURCHASE_DataManager:
    def __init__(self, tab_widget, master_id, line_edits_purchase, pb_purch_new, pb_purch_save, pb_purch_cancel, pb_pur_previous, pb_pur_next, pb_pur_datepick):
        self.master_id = master_id
        self.pb_purch_new = pb_purch_new
        self.pb_purch_save = pb_purch_save
        self.pb_purch_cancel = pb_purch_cancel
        self.pb_pur_previous = pb_pur_previous
        self.pb_pur_next = pb_pur_next
        self.pb_pur_datepick = pb_pur_datepick

        self.tab_widget = tab_widget
        self.line_edits_purchase = line_edits_purchase
        self.my_glob_id = None
        self.flag_insert = False
        self.model = QSqlTableModel()
        self.mapper = QDataWidgetMapper()


        self.pb_purch_new.clicked.connect(self.add_new_purchase_record_prepare)
        self.pb_purch_save.clicked.connect(self.insert_new_purchase_save)
        self.pb_purch_cancel.clicked.connect(self.cancel_purchase)
        self.pb_pur_previous.clicked.connect(self.pur_goto_previous_record)
        self.pb_pur_next.clicked.connect(self.pur_goto_next_record)

        self.set_mappings()
        
    def set_mappings(self):
        # TAB Purchase
        self.line_edits_purchase['ID'].setVisible(False)
        self.line_edits_purchase['ID_Lens'].setVisible(False)

        self.my_glob_id = self.master_id
        # Leere die Felder des Detaildatensatzes
        for line_edits_purchase in self.line_edits_purchase.values():
            try:
                line_edits_purchase.clear()
            except:
                line_edits_purchase.setChecked = False
                # line_edit.setStyleSheet("QCheckBox::indicator { width: 30; height: 30px;}; color: rgb(0, 170, 255);")
        # Lade die Detaildaten basierend auf der Master-ID
        # Modell erstellen für Lens_ownership
        self.model = QSqlTableModel()
        self.model.setTable("Lens_ownership")
        self.model.setFilter(f"ID_Lens = {self.master_id}")
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.mapper.setModel(self.model)
        for field_name, line_edit in self.line_edits_purchase.items():
            self.mapper.addMapping(line_edit, self.model.fieldIndex(field_name))
        self.mapper.toFirst()
        #self.column_names_purchase = []  # Leere Liste zur Speicherung der Spaltennamen
        '''for i in range(self.model.columnCount()):  # ermittle alle Felder in Tabelle Lens_ownership
            column_names_purchase_v = 'le_pur_' + self.model.headerData(i,
                                                                                 Qt.Horizontal).lower()  # Hole den Spaltennamen
            self.column_names_purchase.append(column_names_purchase_v)  # Füge den Namen zur Liste hinzu
            # Widget-Objekt anhand des Namens abrufen
            widget = self.findChild(QtCore.QObject, column_names_purchase_v)
            if widget:
                self.mapper.addMapping(widget, i)
                # print(f"Widget {column_names_purchase_v} gemappt.")
            else:
                print(f"Widget {column_names_purchase_v} nicht gefunden.")
            # Widget-Objekt anhand des Namens abrufen - Ende
        # -------------
        '''

    def has_unsaved_purchase_changes(self) -> bool:
        if self.model.isDirty():
            print ('Purchase model is dirty')
            return True
        else:
            print('Purchase model has not changed')
            return False

    def check_and_prompt_save_purchase(self) -> bool:
        """
        Prüft auf ungespeicherte Änderungen und fragt den Benutzer,
        ob gespeichert, verworfen oder abgebrochen werden soll.
        Gibt True zurück, wenn die aufrufende Aktion fortfahren darf,
        sonst False.
        """
        if not self.has_unsaved_purchase_changes():
            return True  # Keine Änderungen, Aktion kann fortfahren

        # Änderungen vorhanden -> Benutzer fragen
        reply = QMessageBox.question(self, "Ungespeicherte Änderungen",
                                     "Es gibt ungespeicherte Änderungen im aktuellen Kaufdatensatz.\nMöchten Sie sie speichern?",
                                     QMessageBox.StandardButton.Save | QMessageBox.StandardButton.Discard | QMessageBox.StandardButton.Cancel,
                                     QMessageBox.StandardButton.Cancel)  # Standard-Auswahl ist Cancel

        if reply == QMessageBox.StandardButton.Save:
            if self.update_purchase_database():  # Versuche zu speichern
                #self.purchase_text_changed = False  # Flag nach erfolgreichem Speichern zurücksetzen!
                return True  # Speichern erfolgreich, Aktion darf fortfahren
            else:
                return False  # Speichern fehlgeschlagen, Aktion abbrechen

        elif reply == QMessageBox.StandardButton.Discard:
            print("Änderungen verwerfen...")
            # Änderungen verwerfen: Model zurücksetzen ODER neuen Datensatz löschen
            current_row = self.mapper.currentIndex()
            # Prüfen, ob es eine neu eingefügte, noch nicht gespeicherte Zeile ist
            # (Eine Möglichkeit: Prüfen ob Primärschlüssel NULL ist, oder eine separate Flagge setzen beim Einfügen)
            # Einfachere Annahme: Wenn 'purchase_text_changed' gesetzt war, aber nicht 'isDirty',
            # waren es Änderungen an einem bestehenden DS, die nur im Widget waren -> revert reicht.
            # Wenn 'isDirty' ist, könnte es ein neuer DS sein.
            # Vorsichtige Variante: revertAll kann alle Änderungen im Cache betreffen!
            # Gezielter: self.model.revertRecord(current_row) # Qt 6? oder model.revert()
            self.model.revertAll()  # Einfachste, aber evtl. zu weitreichend bei OnManualSubmit
            # Mapper neu setzen, um Widgets zu aktualisieren (falls revert nicht automatisch geht)
            self.mapper.setCurrentIndex(current_row)
            #self.purchase_text_changed = False  # Flag zurücksetzen!
            print("Änderungen verworfen.")
            return True  # Verwerfen erfolgreich, Aktion darf fortfahren

        elif reply == QMessageBox.StandardButton.Cancel:
            print("Aktion abgebrochen.")
            return False  # Benutzer hat Abbrechen gewählt, Aktion nicht fortfahren

        return False  # Sollte nicht erreicht werden

    def pur_goto_previous_record(self):
        ## if not self.check_and_prompt_save_purchase():
        ##     return  # Nicht fortfahren, wenn Speichern/Verwerfen nicht geklappt hat oder Cancel gedrückt wurde

        # Nur wenn check_and_prompt_save_purchase() True zurückgibt:
        # Prüfen, ob ungespeicherte Änderungen vorliegen (optional, aber empfohlen)
        # self.check_and_save_purchase_changes()

        print("Gehe zum vorherigen Kaufdatensatz...")
        self.mapper.toPrevious()
        self.update_purchase_nav_buttons()
        print(f"  Mapper jetzt auf Index {self.mapper.currentIndex()}")

    def pur_goto_next_record(self):
        ##if not self.check_and_prompt_save_purchase():
        ##    return  # Nicht fortfahren, wenn Speichern/Verwerfen nicht geklappt hat oder Cancel gedrückt wurde

        # Nur wenn check_and_prompt_save_purchase() True zurückgibt:
        # Prüfen, ob ungespeicherte Änderungen vorliegen (optional, aber empfohlen)
        # self.check_and_save_purchase_changes()

        print("Gehe zum nächsten Kaufdatensatz...")
        self.mapper.toNext()
        self.update_purchase_nav_buttons()
        print(f"  Mapper jetzt auf Index {self.mapper.currentIndex()}")

    def update_purchase_nav_buttons(self):
        """Aktualisiert den Enabled-Status der Prev/Next-Buttons."""
        if not self.model:  # Sicherstellen, dass Modell existiert
            return

        current_index = self.mapper.currentIndex()
        total_count = self.model.rowCount()  # Anzahl der *gefilterten* Datensätze

        # Vorheriger Button: Aktiv, wenn Index > 0 und Datensätze vorhanden sind
        self.pb_pur_previous.setEnabled(current_index > 0 and total_count > 0)

        # Nächster Button: Aktiv, wenn Index gültig ist und nicht der letzte Datensatz
        self.pb_pur_next.setEnabled(current_index < total_count - 1 and total_count > 0)

        print(
            f"  Nav Buttons Update: Index={current_index}, Count={total_count}, Prev={self.pb_pur_previous.isEnabled()}, Next={self.pb_pur_next.isEnabled()}")

    def cancel_purchase(self):
        self.model.revertAll()
        print ('Revert all changes of purchases')

    def add_new_purchase_record_prepare(self):
        # 2. self.model_insert_lens und self.mapper_insert_lens holen
        self.model_insert_pur = self.model
        self.mapper_insert_pur = self.mapper

        for i in range(self.mapper_insert_pur.model().columnCount()):
            widget = self.mapper_insert_pur.mappedWidgetAt(i)
            if widget and isinstance(widget, QLineEdit):
                widget.setEnabled(True)
            elif widget and isinstance(widget, QPlainTextEdit):
                widget.setEnabled(True)

        row = self.model_insert_pur.rowCount()
        self.model_insert_pur.insertRow(row)
        self.mapper_insert_pur.setCurrentIndex(row)

        # Setze die ID in self.le_pur_id_lens
        #self.le_pur_id_lens.setText(self.le_id.text())
        self.line_edits_purchase['ID_Lens'].setText(str(self.master_id))

        self.flag_insert = True
        self.pb_purch_save.setEnabled(True)
        self.pb_pur_datepick.setEnabled(True)  # Annahme: Gehört zu den Eingabefeldern
        self.pb_purch_new.setEnabled(False)  # Deaktivieren, bis gespeichert/abgebrochen wird

        # Fokus auf das erste sinnvolle Eingabefeld setzen (z.B. Kaufdatum)
        self.line_edits_purchase['Purchase_date'].setFocus()
        #self.le_pur_purchase_date.setFocus()  # Annahme: le_pur_purchase_date ist das QLineEdit für's Datum
        self.flag_insert_purchase = True
        self.line_edits_purchase['ID_Lens'].setVisible(True)
        self.pb_pur_previous.setEnabled(False)
        self.pb_pur_next.setEnabled(False)

    def insert_new_purchase_save(self):
        if not self.flag_insert_purchase:
            self.update_purchase_database()  # Dies ist ein Update, kein Insert !
            self.update_purchase_nav_buttons()
            return

        #print(f'self.le_id.text(): {self.le_id.text()}')
        #self.le_pur_id_lens.setText(self.le_id.text())
        self.line_edits_purchase['ID_Lens'].setText(str(self.master_id))
        #print(f'self.le_pur_id_lens.text(): {self.le_pur_id_lens.text()}')

        # Aktualisiere das Modell nach dem Setzen des Textes
        current_index = self.mapper_insert_pur.currentIndex()

        # Überprüfe den korrekten Spaltennamen
        column_name_id_lens = "ID_Lens"  # Ersetze dies durch den tatsächlichen Spaltennamen
        column_index_id_lens = self.model_insert_pur.fieldIndex(column_name_id_lens)

        column_name_purchase_date = "Purchase_date"  # Ersetze dies durch den tatsächlichen Spaltennamen
        column_index_purchase_date = self.model_insert_pur.fieldIndex(column_name_purchase_date)

        if column_index_id_lens == -1:
            print(f"Column '{column_name_id_lens}' not found in the model.")
            return

        model_index_id_lens = self.model_insert_pur.index(current_index, column_index_id_lens)
        model_index_purchase_date = self.model_insert_pur.index(current_index, column_index_purchase_date)

        # Debug-Ausgabe, um sicherzustellen, dass der Index korrekt ist
        print(f'Current Index: {current_index}, Column Index: {column_index_id_lens}')
        print(f'Current Index: {current_index}, Column Index: {column_index_purchase_date}')

        # Setze den Wert manuell im Modell
        if self.model_insert_pur.setData(model_index_id_lens, self.line_edits_purchase['ID_Lens'].text()):
            print(f'Data set successfully at index {model_index_id_lens}')
        else:
            print(f'Failed to set data at index {model_index_id_lens}')

        # Setze den Wert manuell im Modell für le_pur_purchase_date
        if self.model_insert_pur.setData(model_index_purchase_date, self.line_edits_purchase['Purchase_date'].text()):
            print(f'Data set successfully at index {model_index_purchase_date}')
        else:
            print(f'Failed to set data at index {model_index_purchase_date}')

            # Wenn Insert dann wie folgt:
        # Submit all changes to the database
        if self.model_insert_pur.submitAll():
            print("Changes saved successfully.")
            self.pb_purch_new.setEnabled(True)
            # Aktualisiere den Mapper, um sicherzustellen, dass die Änderungen reflektiert werden
            self.mapper_insert_pur.toFirst()
            self.mapper_insert_pur.toLast()
            self.flag_insert_purchase = False
            self.update_purchase_nav_buttons()
            return True
        else:
            print("Error saving changes:", self.model_insert_pur.lastError().text())
            return False

    def update_purchase_database(self):
        self.le_pur_id_lens.setText(self.le_id.text())
        model = self.model_insert_pur
        mapper = self.mapper_insert_pur

        print('def insert_new_lens_database')
        '''print("Daten vor submitAll():")
        for i in range(model.columnCount()):
            column_name = model.headerData(i, Qt.Horizontal)
            value = record.value(i)
            print(f"  {column_name}: {value} (Type: {type(value)})")
        '''

        # Änderungen in die Datenbank schreiben
        if model.submitAll():
            print("Neuer Datensatz erfolgreich in die Datenbank gespeichert.")
            # Mapper auf die neue Zeile setzen, um die Form zu aktualisieren
            self.pb_purch_new.setEnabled(True)
            self.update_purchase_nav_buttons()
            return True
        else:
            error = model.lastError()
            print(f"Fehler beim Speichern in die Datenbank: {error.text()}")
            QMessageBox.critical(self, "Fehler beim Speichern",
                                 f"Konnte den neuen Datensatz nicht speichern:\n{error.text()}")
            return False

    def enable_purchase_widgets(self, enabled: bool):
        """Hilfsfunktion zum Aktivieren/Deaktivieren aller Eingabe-Widgets im Purchase-Tab."""
        # Iteriere durch die Widgets, die du im Purchase-Tab verwendest
        # (Annahme: sie sind direkte Kinder eines spezifischen Layouts oder Containers, oder du kennst ihre Namen)
        for line_edits_purchase in self.line_edits_purchase.values():
            try:
                line_edits_purchase.setEnabled(enabled)
            except:
                line_edits_purchase.setChecked = False
        '''widgets_to_toggle = [
            self.le_pur_purchase_date,
            self.le_pur_purchase_price,
            self.le_pur_purchase_serial_no,
            self.le_pur_purchase_from,
            self.le_pur_purchase_lens_colour,
            self.le_pur_purchase_lens_condition,
            self.le_pur_purchase_comment,
            # Füge hier alle anderen relevanten QLineEdit, QPlainTextEdit, QComboBox etc. hinzu
            self.pb_datepick  # Der Button zum Auswählen des Datums
        ]
        for widget in widgets_to_toggle:
            if widget:  # Sicherstellen, dass das Widget existiert
                widget.setEnabled(enabled)
        '''

    def load_data_purchase(self, master_id):
        print('Start load_data_purchase')
        print('load_data_purchase')
        self.line_edits_purchase['ID'].setVisible(False)
        self.line_edits_purchase['ID_Lens'].setVisible(False)
        self.line_edits_purchase['DateChanged'].setVisible(False)
        self.line_edits_purchase['DateCreated'].setVisible(False)
        print (f'load_data_purchase, glob_id: {self.master_id}')

        current_lens_id = master_id
        if current_lens_id is None:
            print("  Keine gültige lens_id zum Laden der Käufe.")
            # Ggf. Widgets leeren/deaktivieren und Buttons deaktivieren
            self.enable_purchase_widgets(False)
            self.pb_purch_save.setEnabled(False)
            self.pb_pur_previous.setEnabled(False)
            self.pb_pur_next.setEnabled(False)
            self.pb_purch_new.setEnabled(False)  # Oder True, wenn eine gültige lens_id erwartet wird
            return

        #model = self.model_purchase
        #mapper = self.mapper_purchase

        # 1. Filter auf die aktuelle Objektiv-ID setzen
        id_lens_col_name = "ID_Lens"  # !!! Korrekten Spaltennamen prüfen !!!
        # Korrektes Quoting für SQL-Identifier (variiert je nach DB, Standard oft "")
        # Sicherstellen, dass current_lens_id ein passender Typ für den SQL-Vergleich ist
        filter_str = f"\"{id_lens_col_name}\" = {current_lens_id}"  # Annahme: ID ist Integer
        print(f"  Setze Filter auf model_purchase: {filter_str}")
        self.model.setFilter(filter_str)
        # model.select() # Select ist nicht immer nötig nach setFilter, aber schadet oft nicht

        # Überprüfen, ob Datensätze nach dem Filtern vorhanden sind
        record_count = self.model.rowCount()

        print(f"  Anzahl Datensätze nach Filter: {record_count}")

        if record_count == 0:
            # Fall: Keine Kaufdatensätze für dieses Objektiv
            print("  Keine Kaufdatensätze gefunden.")
            # Widgets leeren und deaktivieren
            self.clear_purchase_widgets()  # Eigene Hilfsfunktion siehe unten (optional)
            self.enable_purchase_widgets(False)
            self.pb_purch_save.setEnabled(False)
            self.pb_pur_datepick.setEnabled(False)
            self.pb_purch_new.setEnabled(True)  # Erlaube das Hinzufügen des ersten Datensatzes
        else:
            # Fall: Mindestens ein Datensatz gefunden
            print("  Kaufdatensätze gefunden.")
            # Mapper auf den ersten Datensatz des gefilterten Modells setzen
            self.mapper.toFirst()
            print(f"  Mapper auf Index {self.mapper.currentIndex()} gesetzt.")
            # Widgets aktivieren (da Daten vorhanden sind)
            self.enable_purchase_widgets(True)
            self.pb_purch_save.setEnabled(True)  # Änderungen erlauben
            self.pb_pur_datepick.setEnabled(True)
            self.pb_purch_new.setEnabled(True)  # Hinzufügen weiterer erlauben

        # Status der Navigationsbuttons aktualisieren (immer aufrufen)
        self.update_purchase_nav_buttons()
        #self.purchase_text_changed = False
        #self.text_changed = False

    def clear_purchase_widgets(self):
        """Hilfsfunktion zum Leeren der Eingabefelder im Purchase-Tab."""
        # Ähnlich wie enable_purchase_widgets, nur zum Leeren
        for line_edits_purchase in self.line_edits_purchase.values():
            try:
                line_edits_purchase.clear()
            except:
                line_edits_purchase.setChecked = False
        '''widgets_to_clear = [
            self.le_pur_purchase_date, self.le_pur_purchase_price,
            self.le_pur_purchase_serial_no, self.le_pur_purchase_from,
            self.le_pur_purchase_lens_colour, self.le_pur_purchase_lens_condition,
            self.le_pur_purchase_comment,
            # Füge hier andere relevante Widgets hinzu
        ]
        for widget in widgets_to_clear:
            if widget:
                if isinstance(widget, QLineEdit):
                    widget.clear()
                elif isinstance(widget, QPlainTextEdit):
                    widget.clear()
                # Ggf. weitere Widget-Typen behandeln (z.B. QComboBox.setCurrentIndex(-1))
        '''