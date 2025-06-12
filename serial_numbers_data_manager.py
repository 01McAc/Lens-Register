
from PySide6 import QtSql
from PySide6.QtCore import Qt
from PySide6.QtSql import QSqlTableModel
from PySide6.QtWidgets import QDataWidgetMapper

class Serial_Numbers_DataManager:
    def __init__(self, tab_widget, master_id, tbl_serial_numbers, pb_add, pb_delete, pb_save_changes):
        self.pb_add = pb_add
        self.pb_delete = pb_delete
        self.pb_save_changes = pb_save_changes
        self.tab_widget = tab_widget
        self.master_id = master_id
        self.tbl_serial_numbers = tbl_serial_numbers
        self.model = QSqlTableModel()
        self.mapper = QDataWidgetMapper()

        self.pb_add.clicked.connect(self.add_record)
        self.pb_delete.clicked.connect(self.delete_record)
        self.pb_save_changes.clicked.connect(self.save_changes)

    def get_data_tableview(self):
        '''db = QtSql.QSqlDatabase.addDatabase('QSQLITE')
        db.setDatabaseName('Lenses.sqlite')
        if not db.open():  # add this line to open the database
            print("Error: Could not open database")  # add error handling.
            return
        '''
        # Verwende QSqlTableModel und die View "LensesView"
        self.model = QSqlTableModel(self)
        self.model.setTable("Serial_numbers")
        self.model.setFilter(f"ID_Lens = {self.master_id}")
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        # self.model.setSort(8, Qt.AscendingOrder)  # Sortiere standardmäßig nach der Spalte "FocalLength_sort"


        if self.tbl_serial_numbers:
            print ('tbl_serial_numbers korrekt gefunden')
            self.tbl_serial_numbers.setModel(self.model)
            # Erste Spalte ausblenden
            header = self.tbl_serial_numbers.horizontalHeader()
            header.hideSection(0)  # Spalte 0 ausblenden: ID
            header.hideSection(1)  # Spalte 0 ausblenden: ID_Lens

            # Spaltenbreite anpassen (optional)
            #header.setSectionResizeMode(1, QHeaderView.Stretch)

            header.resizeSection(2, 110)    # SN_Start
            header.resizeSection(3, 100)    # SN_End
            header.resizeSection(4, 200)    # Product
            header.resizeSection(5, 100)    # Year
            header.resizeSection(6, 250)    # Total
            header.resizeSection(7, 950)    # Information
            header.resizeSection(8, 250)    # DateCreated
            header.resizeSection(9, 250)    # DateChanged

            # Überschriften ändern

            self.model.setHeaderData(2, Qt.Horizontal, "S/N Start")
            self.model.setHeaderData(3, Qt.Horizontal, "S/N End")
            self.model.setHeaderData(4, Qt.Horizontal, "Product")
            self.model.setHeaderData(5, Qt.Horizontal, "Year")
            self.model.setHeaderData(6, Qt.Horizontal, "Total")
            self.model.setHeaderData(7, Qt.Horizontal, "Information")
            self.model.setHeaderData(8, Qt.Horizontal, "Date Created")
            self.model.setHeaderData(9, Qt.Horizontal, "Date Changed")

            # Überschriften linksbündig anordnen
            header = self.tbl_serial_numbers.horizontalHeader()
            header.setDefaultAlignment(Qt.AlignLeft | Qt.AlignVCenter)

            # Benutzerdefinierten Delegate zuweisen
            # delegate = ColorDelegate(self.tbl_all_lenses)
            #self.tbl_serial_numbers.setItemDelegateForColumn(1, delegate)  # Spalte 1 überprüfen
            self.tbl_serial_numbers.setSortingEnabled(True)
            self.tbl_serial_numbers.sortByColumn(2,
                                             Qt.AscendingOrder)  # Sortiere nach der vierten Spalte (FocalLength_sort)
            # Vertikalen Header ausblenden
            self.tbl_serial_numbers.verticalHeader().setVisible(False)

        else:
            print("Error: tbl_serial_numbers not found")

    def add_record(self):
        # Füge eine leere Zeile hinzu
        print("Add record")
        row = self.model.rowCount()
        self.model.insertRow(row)
        self.tbl_serial_numbers.scrollToBottom()  # Scrolle zur neuen Zeile
        self.set_id_lens()

    def delete_record(self):
        # Lösche den ausgewählten Datensatz
        print("Delete record")
        selected_indexes = self.tbl_serial_numbers.selectionModel().selectedRows()
        for index in selected_indexes:
            self.model.removeRow(index.row())
        self.model.submitAll()
        self.get_data_tableview(self.master_id)

    def set_id_lens(self):
        # Bestimme die aktuelle Zeile
        current_row = self.tbl_serial_numbers.currentIndex().row()
        # Setze den Wert der ersten Spalte (ID_Lens) auf master_id
        index = self.model.index(current_row, 1)  # Index der ersten Spalte in der aktuellen Zeile
        self.model.setData(index, self.master_id)
        print (f'In function set_id_lens set ID = {self.master_id}')

    def save_changes(self):
        self.set_id_lens()
        # Speichere die Änderungen
        print("Save changes")
        self.model.submitAll()

    def get_data_tableview(self, master_id):
        # Lade die Detaildaten basierend auf der Master-ID
        self.model.setTable("Serial_numbers")
        self.model.setFilter(f"ID_Lens = {master_id}")
        self.model.select()
        print (f'>>> Serial no: self.model.setFilter(ID_Lens = {self.master_id})')
        self.tbl_serial_numbers.setModel(self.model)

        # Erste Spalte ausblenden
        header = self.tbl_serial_numbers.horizontalHeader()
        header.hideSection(0)  # Spalte 0 ausblenden
        header.hideSection(1)  # Spalte 1 ausblenden
        header.hideSection(8)  # DateCreated
        header.hideSection(9)  # DateChanged

        # Spaltenbreite anpassen (optional)
        # header.setSectionResizeMode(1, QHeaderView.Stretch)
        header.resizeSection(2, 150)
        header.resizeSection(3, 150)
        header.resizeSection(4, 430)
        header.resizeSection(5, 200)
        header.resizeSection(6, 220)
        header.resizeSection(7, 1150)

        # Überschriften ändern
        self.model.setHeaderData(2, Qt.Horizontal, "S/N Start")
        self.model.setHeaderData(3, Qt.Horizontal, "S/N End")
        self.model.setHeaderData(4, Qt.Horizontal, "Product")
        self.model.setHeaderData(5, Qt.Horizontal, "Year")
        self.model.setHeaderData(6, Qt.Horizontal, "Total #")
        self.model.setHeaderData(7, Qt.Horizontal, "Information")

        # Überschriften linksbündig anordnen
        header = self.tbl_serial_numbers.horizontalHeader()
        header.setDefaultAlignment(Qt.AlignLeft | Qt.AlignVCenter)

        self.tbl_serial_numbers.setSortingEnabled(True)