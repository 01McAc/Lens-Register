from PySide6 import QtCore
from PySide6.QtCore import Qt, Signal
from PySide6.QtSql import QSqlDatabase, QSqlQuery, QSqlQueryModel, QSqlTableModel, QSqlRelationalTableModel, QSqlRelation
from PySide6.QtWidgets import QDialog, QMessageBox, QLineEdit, QPlainTextEdit, QMainWindow, QDataWidgetMapper, \
    QAbstractItemView
from frm_mount_type.UI_mount_types import Ui_MountTypesWindow

class MOUNT_TYPE_manager(QMainWindow, Ui_MountTypesWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setupUi(self)
        print('MOUNT_TYPE_manager\n\n')
        self.set_mappings()
        self.set_connect_events()

        self.flag_insert_manuf = False
        self.flag_insert = False
        self.le_datecreated.setEnabled(False)
        self.le_datechanged.setEnabled(False)

        self.update_nav_buttons()

    def set_mappings(self):
        self.le_id.setVisible(False)

        # Basic information table "Makers"
        self.model = QSqlTableModel()
        self.model.setTable("Mount_types")
        #self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnManualSubmit)
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.model.setSort(12, Qt.AscendingOrder)
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
        self.tbl_quickview.sortByColumn(12, Qt.AscendingOrder)
        header = self.tbl_quickview.horizontalHeader()
        header.hideSection(0)  # Spalte 0 ausblenden: ID
        x = range(2, 13)
        for i in x:
            header.hideSection(i)

        header.resizeSection(1, 440)
        self.model.setHeaderData(1, Qt.Horizontal, "Mount Types - Quick select")
        # Überschriften linksbündig anordnen
        header.setDefaultAlignment(Qt.AlignLeft | Qt.AlignVCenter)
        self.tbl_quickview.verticalHeader().setVisible(False)
        # TableView Object end ----------

        self.mapper.toFirst()

    def set_connect_events(self):
        # Signale und Slots verbinden
        self.pb_first.clicked.connect(self.goto_first_record)
        self.pb_previous.clicked.connect(self.goto_previous_record)
        self.pb_next.clicked.connect(self.goto_next_record)
        self.pb_last.clicked.connect(self.goto_last_record)
        self.pb_new.clicked.connect(self.insert_new_prepare)
        self.pb_save.clicked.connect(self.save_mount_type)
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

    def save_mount_type(self):
        print ('insert_new_mount_type_database')
        self.model.submitAll()
        self.update_nav_buttons()
        self.tbl_quickview.setEnabled(True)
        self.pb_new.setEnabled(True)

