from PySide6 import QtCore
from PySide6.QtCore import Qt, Signal
from PySide6.QtSql import QSqlDatabase, QSqlQuery, QSqlQueryModel, QSqlTableModel, QSqlRelationalTableModel, QSqlRelation
from PySide6.QtWidgets import QDialog, QMessageBox, QLineEdit, QPlainTextEdit, QMainWindow, QDataWidgetMapper, \
    QAbstractItemView
from frm_maker.UI_manufacturer import Ui_ManufacturersWindow

class MANUFACTURERS_manager(QMainWindow, Ui_ManufacturersWindow):
    master_data_changed = Signal(int)

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setupUi(self)
        print ('MANUFACTURERS_manager\n\n')
        self.set_mappings()
        self.set_connect_events()
        self.populate_country_combobox()
        #self.master_data_changed.connect(self.set_cb_country)

        # --- Schritt 2: Synchronisation ComboBox -> le_countryid ---
        if self.cb_country and self.le_countryid:
            self.cb_country.currentIndexChanged.connect(self.on_country_selected)

        # --- Schritt 3: Synchronisation le_countryid -> ComboBox ---
        if self.le_countryid and self.cb_country:
            self.le_countryid.textChanged.connect(self.on_id_changed)

        self.flag_insert_manuf = False
        self.flag_insert = False
        self.le_datecreated.setEnabled(False)
        self.le_datechanged.setEnabled(False)

        self.set_cb_country()   # Zeige das Land in der ComboBox an, nach dem Start der Form
        self.update_nav_buttons()

    def on_country_selected(self, index: int):
        """
        Slot, der aufgerufen wird, wenn ein Element in der ComboBox ausgewählt wird.
        Setzt die zugehörige Länder-ID in das le_countryid Feld.
        """
        if index < 0:  # -- Bitte wählen -- oder ungültiger Index
            if self.le_countryid:
                self.le_countryid.setText("")  # Leert le_countryid
                # if self.debug_id_label: self.debug_id_label.setText("Current ID: ")
            return

        selected_id = self.cb_country.itemData(index)  # Holt die userData (die ID)
        print (f'----- def on_country_selected, selected_id = {selected_id}')
        current_index = self.mapper.currentIndex()
        # Überprüfe den korrekten Spaltennamen
        column_name_id = "CountryId"  # Ersetze dies durch den tatsächlichen Spaltennamen
        column_index_id = self.model.fieldIndex(column_name_id)
        model_index_id = self.model.index(current_index, column_index_id)
        if self.model.setData(model_index_id, selected_id):
            print(f'Data set successfully at index {model_index_id}  column_index_id: {column_index_id}')
        else:
            print(f'Failed to set data at index {model_index_id} -   column_index_id: {column_index_id}')

        self.update_nav_buttons()
        '''if self.le_countryid:
            self.le_countryid.setText(str(selected_id))  # Setzt die ID in le_countryid (löst textChanged aus)
            # if self.debug_id_label: self.debug_id_label.setText(f"Current ID: {selected_id}")
            print(f"ComboBox-Auswahl: ID {selected_id} in le_countryid gesetzt.")
        '''
    def set_cb_country(self):
        print (f'def set_cb_country - self.le_countryid.text() = {self.le_countryid.text()}')
        self.on_id_changed(self.le_countryid.text())

    def on_id_changed(self, id_text: str):
        """
        Slot, der aufgerufen wird, wenn sich der Text im le_countryid Feld ändert.
        Wählt das entsprechende Land in der ComboBox aus.
        """
        print (f'----- def on_id_changed, id_text = {id_text}')
        if not id_text:
            self.cb_country.setCurrentIndex(0)  # Wählt "-- Bitte wählen --" oder ersten Eintrag
            print("le_countryid leer, ComboBox auf Standard gesetzt.")
            return

        try:
            target_id = int(id_text)
        except ValueError:
            print(f"Invalid ID in le_countryid: {id_text}")
            self.cb_country.setCurrentIndex(0)  # Ungültige ID, ComboBox auf Standard
            return

        # Suchen der ID in den ComboBox-Daten
        # Qt.UserRole ist der Standard-Rolle für itemData / findData
        index = self.cb_country.findData(target_id, Qt.UserRole)
        if index >= 0:
            # Wichtig: Disconnect und Reconnect, um Endlosschleife zu vermeiden
            # da setCurrentIndex() auch currentIndexChanged auslösen würde
            self.cb_country.currentIndexChanged.disconnect(self.on_country_selected)
            self.cb_country.setCurrentIndex(index)
            self.cb_country.currentIndexChanged.connect(self.on_country_selected)
            print(f"def on_id_changed, le_countryid-Änderung: ComboBox auf '{self.cb_country.currentText()}' ({target_id}) gesetzt.")
        else:
            self.cb_country.setCurrentIndex(0)  # ID nicht gefunden, ComboBox auf Standard
            print(f"le_countryid-Änderung: ID {target_id} nicht in ComboBox gefunden. Auf Standard gesetzt.")

    def set_mappings(self):
        self.le_id.setVisible(False)
        self.le_countryid.setVisible(False)

        # Basic information table "Makers"
        self.model = QSqlTableModel()
        self.model.setTable("Makers")
        #self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnManualSubmit)
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.mapper = QDataWidgetMapper(self)
        self.mapper.setModel(self.model)

        self.column_names = []  # Leere Liste zur Speicherung der Spaltennamen
        for i in range(self.model.columnCount()):  # ermittle alle Felder in Tabelle Makers
            column_name = 'le_' + self.model.headerData(i, Qt.Horizontal).lower()  # Hole den Spaltennamen
            #print(f'>>>>>>>>>> Lens-column_name:*{column_name}*')
            self.column_names.append(column_name)  # Füge den Namen zur Liste hinzu

            # Widget-Objekt anhand des Namens abrufen
            widget = self.findChild(QtCore.QObject, column_name)
            if widget:
                self.mapper.addMapping(widget, i)
                # print(f"Widget Lenses {column_name} gemappt.")
            else:
                print(f"Widget {column_name} nicht gefunden.")

        # TableView Object start ----------
        self.tbl_quickview.setModel(self.model)
        self.tbl_quickview.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)

        header = self.tbl_quickview.horizontalHeader()
        header.hideSection(0)  # Spalte 0 ausblenden: ID
        x = range(2, 9)
        for i in x:
            header.hideSection(i)

        header.resizeSection(1, 500)
        self.model.setHeaderData(1, Qt.Horizontal, "Manufacturer - Quick select")
        # Überschriften linksbündig anordnen
        header.setDefaultAlignment(Qt.AlignLeft | Qt.AlignVCenter)
        self.tbl_quickview.verticalHeader().setVisible(False)
        # TableView Object end ----------

        self.mapper.toFirst()


    def populate_country_combobox(self):
        """Füllt die ComboBox 'cb_country' mit Daten aus der 'Country'-Tabelle."""
        if not self.cb_country:
            print("Error: ComboBox 'cb_country' not found in UI.")
            return

        db = QSqlDatabase.database() # Nehmen wir an, die DB-Verbindung ist schon offen
        if not db.isOpen():
            print("Error: Database not open. Cannot populate country combobox.")
            return

        self.cb_country.clear() # Bestehende Einträge löschen
        self.cb_country.addItem("-- Please select --", -1) # Optional: Standard-/Platzhalter-Eintrag

        query = QSqlQuery(db)
        # Sortierung nach CountryName für eine komfortable Auswahl
        if not query.exec("SELECT ID, CountryName FROM Country ORDER BY CountryName ASC"):
            print(f"Error querying Country table: {query.lastError().text()}")
            return

        while query.next():
            country_id = query.value(0) # ID ist die erste Spalte
            country_name = query.value(1) # CountryName ist die zweite Spalte
            self.cb_country.addItem(country_name, country_id)
        print("Country ComboBox populated.")

    def set_connect_events(self):
        # Signale und Slots verbinden
        self.pb_first.clicked.connect(self.goto_first_record)
        self.pb_previous.clicked.connect(self.goto_previous_record)
        self.pb_next.clicked.connect(self.goto_next_record)
        self.pb_last.clicked.connect(self.goto_last_record)
        self.pb_new.clicked.connect(self.insert_new_prepare)
        self.pb_save.clicked.connect(self.save_manufacturer)
        self.tbl_quickview.doubleClicked.connect(self.double_click_tableview)
        self.le_id.textChanged.connect(self.update_nav_buttons)

    def double_click_tableview(self, signal):
        row = signal.row()
        column = signal.column()
        model = self.tbl_quickview.model()
        value = model.data(model.index(row, 0), Qt.DisplayRole)
        search_id = model.data(model.index(row, 0), Qt.DisplayRole)
        print('value text: ', value, '  ID:  ', search_id)

        """Sucht die ID im Modell und setzt den Mapper-Index."""
        id_col = self.model.fieldIndex("id")  # Index der ID-Spalte holen
        start_index = self.model.index(0, id_col)
        matched_indexes = self.model.match(
            start_index,
            Qt.ItemDataRole.DisplayRole,
            search_id,
            1,
            Qt.MatchFlag.MatchExactly | Qt.MatchFlag.MatchCaseSensitive
        )

        if matched_indexes:
            found_index = matched_indexes[0]
            target_row = found_index.row()
            self.mapper.setCurrentIndex(target_row)
            print(f"Datensatz mit ID {search_id} gefunden und angezeigt (Zeile {target_row}).")
            self.update_nav_buttons()
        else:
            print(f"Fehler: ID {search_id} nicht gefunden.")

    def update_nav_buttons(self):
        """Aktualisiert den Enabled-Status der Prev/Next-Buttons für Lenses Stammdaten."""
        if not self.model:  # Sicherstellen, dass Modell existiert
            print ('Achtung!!! - self.model existiert nicht. def update_nav_buttons')
            return

        current_index = self.mapper.currentIndex()
        total_count = self.model.rowCount()  # Anzahl der *gefilterten* Datensätze
        print (f'current_index = {current_index}   -  total_count = {total_count}')

        # Vorheriger Button: Aktiv, wenn Index > 0 und Datensätze vorhanden sind
        self.pb_previous.setEnabled(current_index > 0 and total_count > 0)

        # Nächster Button: Aktiv, wenn Index gültig ist und nicht der letzte Datensatz
        self.pb_next.setEnabled(current_index < total_count - 1 and total_count > 0)
        self.pb_last.setEnabled(current_index < total_count - 1 and total_count > 0)

    def goto_first_record(self):
        print ('goto_first_record')
        self.mapper.toFirst()

    def goto_previous_record(self):
        print ('goto_previous_record')
        self.mapper.toPrevious()

    def goto_next_record(self):
        print ('goto_next_record')
        self.mapper.toNext()

    def goto_last_record(self):
        print ('goto_last_record')
        self.mapper.toLast()

    def insert_new_prepare(self):
        print ('insert_new_prepare')
        self.model_insert_manuf = self.model
        self.mapper_insert_manuf = self.mapper

        for i in range(self.mapper_insert_manuf.model().columnCount()):
            widget = self.mapper_insert_manuf.mappedWidgetAt(i)
            if widget and isinstance(widget, QLineEdit):
                widget.setEnabled(True)
                print (f'Widget: {widget.objectName()}')
            elif widget and isinstance(widget, QPlainTextEdit):
                widget.setEnabled(True)

        row = self.model_insert_manuf.rowCount()
        self.model_insert_manuf.insertRow(row)
        self.mapper_insert_manuf.setCurrentIndex(row)

        # Setze die ID in self.le_manuf_id_lens
        # self.le_manuf_id_lens.setText(self.le_id.text())
        ##self.line_edits_manufchase['ID_Lens'].setText(str(self.master_id))

        # Pushbutton management
        self.flag_insert = True
        self.pb_save.setEnabled(True)
        self.pb_new.setEnabled(False)  # Deaktivieren, bis gespeichert/abgebrochen wird
        # Fokus auf das erste sinnvolle Eingabefeld setzen (z.B. Kaufdatum)
        ##self.lineedit['le_makername'].setFocus()
        # self.le_manuf_manufchase_date.setFocus()  # Annahme: le_manuf_manufchase_date ist das QLineEdit für's Datum
        ##self.line_edits_manufchase['ID_Lens'].setVisible(True)
        self.pb_first.setEnabled(False)
        self.pb_previous.setEnabled(False)
        self.pb_next.setEnabled(False)
        self.pb_last.setEnabled(False)
        self.flag_insert_manuf = True
        self.tbl_quickview.setEnabled(False)
        self.le_datecreated.setEnabled(False)
        self.le_datechanged.setEnabled(False)

    def save_manufacturer(self):
        print ('insert_new_manufacturer_database')
        self.model.submitAll()
        self.update_nav_buttons()
        self.tbl_quickview.setEnabled(True)
        self.pb_new.setEnabled(True)
