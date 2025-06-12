from PySide6.QtSql import QSqlTableModel
from PySide6.QtWidgets import QDataWidgetMapper

class Sale_DataManager:
    def __init__(self, tab_widget, line_edits, pb_sale_new_sale, pb_sale_save, pb_sale_previous, pb_sale_next, master_id):
        self.master_id = master_id
        self.pb_sale_previous = pb_sale_previous
        self.pb_sale_next = pb_sale_next
        self.pb_sale_new_sale = pb_sale_new_sale
        self.pb_sale_save = pb_sale_save
        self.tab_widget = tab_widget
        self.line_edits = line_edits
        self.model = QSqlTableModel()
        self.mapper = QDataWidgetMapper()
        self.pb_sale_new_sale.clicked.connect(self.add_new_sale_prepare)
        self.pb_sale_save.clicked.connect(self.sale_save)
        self.pb_sale_previous.clicked.connect(self.sale_goto_previous_record)
        self.pb_sale_next.clicked.connect(self.sale_goto_next_record)
        self.my_glob_id = None
        self.flag_insert = False
        self.set_mappings()

    def set_mappings(self):
        # TAB Sales
        self.line_edits['ID'].setVisible(False)
        self.line_edits['ID_Lens'].setVisible(False)

        self.my_glob_id = self.master_id
        # Leere die Felder des Detaildatensatzes
        for line_edits in self.line_edits.values():
            try:
                line_edits.clear()
            except:
                line_edits.setChecked = False
                # line_edit.setStyleSheet("QCheckBox::indicator { width: 30; height: 30px;}; color: rgb(0, 170, 255);")
        # Lade die Detaildaten basierend auf der Master-ID
        # Modell erstellen für Lens_ownership
        self.model = QSqlTableModel()
        self.model.setTable("Lens_sale")
        self.model.setFilter(f"ID_Lens = {self.master_id}")
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.mapper.setModel(self.model)
        for field_name, line_edit in self.line_edits.items():
            self.mapper.addMapping(line_edit, self.model.fieldIndex(field_name))
        self.mapper.toFirst()


    def sale_save(self):
        if not self.flag_insert:
            self.update_sale()  # Dies ist ein Update, kein Insert !
            return

        print("Insert: Neuen Sale hinzufügen...")

        #print(f'self.le_id.text(): {str(self.my_glob_id)}')
        #self.line_edits['ID_Lens'].setText(self.my_glob_id)

        # Aktualisiere das Modell nach dem Setzen des Textes
        current_index = self.mapper.currentIndex()

        # Überprüfe den korrekten Spaltennamen
        column_name_id_lens = "ID_Lens"  # Ersetze dies durch den tatsächlichen Spaltennamen
        column_index_id_lens = self.model.fieldIndex(column_name_id_lens)

        column_name_sale_date = "Sale_date"  # Ersetze dies durch den tatsächlichen Spaltennamen
        column_index_sale_date = self.model.fieldIndex(column_name_sale_date)

        if column_index_id_lens == -1:
            print(f"Column '{column_name_id_lens}' not found in the model.")
            return

        model_index_id_lens = self.model.index(current_index, column_index_id_lens)
        model_index_sale_date = self.model.index(current_index, column_index_sale_date)

        # Setze den Wert manuell im Modell
        if self.model.setData(model_index_id_lens, self.my_glob_id):
            print(f'Data set successfully at index {model_index_id_lens}')
        else:
            print(f'Failed to set data at index {model_index_id_lens}')

        # Setze den Wert manuell im Modell
        if self.model.setData(model_index_sale_date, self.line_edits['Sale_date'].text()):
            print(f'Data set successfully at index {model_index_sale_date}')
        else:
            print(f'Failed to set data at index {model_index_sale_date}')

        if self.model.submitAll():
            print("Changes saved successfully.")
            self.pb_sale_new_sale.setEnabled(True)
            # Aktualisiere den Mapper, um sicherzustellen, dass die Änderungen reflektiert werden
            self.mapper.toFirst()
            self.mapper.toLast()
            self.flag_insert = False
            self.update_sale_nav_buttons()
            return True
        else:
            print("Error saving changes:", self.model.lastError().text())
            return False

    def sale_goto_previous_record(self):
        print("sale_goto_previous_record...")
        self.mapper.toPrevious()
        self.update_sale_nav_buttons()
        print(f"  Mapper jetzt auf Index {self.mapper.currentIndex()}")

    def sale_goto_next_record(self):
        print("sale_goto_next_record...")
        self.mapper.toNext()
        self.update_sale_nav_buttons()
        print(f"  Mapper jetzt auf Index {self.mapper.currentIndex()}")

    def update_sale_nav_buttons(self):
        """Aktualisiert den Enabled-Status der Prev/Next-Buttons."""
        if not self.model:  # Sicherstellen, dass Modell existiert
            return

        current_index = self.mapper.currentIndex()
        total_count = self.model.rowCount()  # Anzahl der *gefilterten* Datensätze

        # Vorheriger Button: Aktiv, wenn Index > 0 und Datensätze vorhanden sind
        self.pb_sale_previous.setEnabled(current_index > 0 and total_count > 0)

        # Nächster Button: Aktiv, wenn Index gültig ist und nicht der letzte Datensatz
        self.pb_sale_next.setEnabled(current_index < total_count - 1 and total_count > 0)

        print(
            f"  Nav Buttons Update: Index={current_index}, Count={total_count}, Prev={self.pb_sale_previous.isEnabled()}, Next={self.pb_sale_next.isEnabled()}")

    def update_sale(self):
        print('update_sale')
        self.flag_insert = False
        if self.mapper.submit():  # Nicht unbedingt erforderlich, Daten in den Cache zu schreiben.
            #print('Neue ID: ', self.le_id.text())
            if self.model.submitAll():
                print("Lenses: Änderungen erfolgreich gespeichert.")
            else:
                print('update_database, self.model.submitAll() Error. Lenses: Fehler beim Speichern.')
                error = self.model.lastError()
                print(f"Fehler beim Speichern der Daten: {error.text()}   Type: {error.type()}")
        else:
            print("Lenses: Fehler beim Speichern der Änderungen:")
            error = self.model.lastError()
            print(f"Fehler beim Speichern der Daten: {error.text()}")
            print(f"Fehler-Typ: {error.type()}")
            # print(f"Fehler-Nummer: {error.number()}")

        self.update_sale_nav_buttons()

    def add_new_sale_prepare(self):
        self.flag_insert = True
        for line_edit in self.line_edits.values():
            line_edit.clear()
            line_edit.setEnabled(True)

        row = self.model.rowCount()
        self.model.insertRow(row)
        self.mapper.setCurrentIndex(row)

        self.line_edits['ID_Lens'].setText(str(self.my_glob_id))
        self.pb_sale_new_sale.setEnabled(False)

    def load_detail_data(self, master_id):
        print(f"load_detail_data called with master_id: {master_id}")  # Debug-Ausgabe hinzufügen
        self.line_edits['ID'].setVisible(False)
        self.line_edits['ID_Lens'].setVisible(False)

        self.my_glob_id = master_id
        # Leere die Felder des Detaildatensatzes
        for line_edit in self.line_edits.values():
            line_edit.clear()

        # Lade die Detaildaten basierend auf der Master-ID
        self.model.setTable("Lens_sale")
        self.model.setFilter(f"ID_Lens = {master_id}")
        self.model.select()

        # Mappe die QLineEdit-Objekte mit den Datenbankfeldern
        self.mapper.setModel(self.model)
        for field_name, line_edit in self.line_edits.items():
            self.mapper.addMapping(line_edit, self.model.fieldIndex(field_name))
        self.mapper.toFirst()
        if self.model.rowCount() == 0:
            print ('>>>>>>>>>>>> Kein Datensatz für Sale vorhandenn')
            # Leere die Felder des Detaildatensatzes
            set_val = False
        else:
            set_val = True
        for line_edit in self.line_edits.values():
            #line_edit.clear()
            line_edit.setEnabled(set_val)
        #print (f'self.model.fieldIndex("ID"): {self.model.fieldIndex("ID")}')
        self.line_edits['ID'].setVisible(False)
        self.line_edits['ID_Lens'].setVisible(False)
        self.update_sale_nav_buttons()