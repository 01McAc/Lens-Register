# Nav-Button nach insert
import sys, getpass
from datetime import *
from PySide6.QtCore import Qt, Signal, QTimer, QObject, QDateTime, QPoint, QRegularExpression, QSortFilterProxyModel
from PySide6.QtGui import QAction, QColor, QPalette, QPixmap
from PySide6 import QtSql, QtCore
from PySide6.QtSql import QSqlDatabase, QSqlQuery, QSqlQueryModel, QSqlTableModel, QSqlRelationalTableModel, QSqlRelation
from PySide6.QtWidgets import (
    QDialog, QWidget,
    QApplication, QPushButton, QHeaderView, QTextEdit, QMessageBox,
    QMainWindow, QLabel,
    QTableView,
    QMenu,
    QStyledItemDelegate,
    QColorDialog,
    QGridLayout,
    QDataWidgetMapper,
    QLineEdit, QSizePolicy,
    QPlainTextEdit, QPushButton, QCalendarWidget, QDialog, QVBoxLayout, QMenu, QToolBar,
)
import settings
import shutil

from WindowMountTypes import MOUNT_TYPE_manager
from frm_lenses.UI_lenses import Ui_MainWindow
from frm_lensdetails.UI_details import Ui_MainWindowDetails
from frm_maker.UI_manufacturer import Ui_ManufacturersWindow
from sales_detail_data_manager import Sale_DataManager  # Importiere die Detaildaten-Klasse
from serial_numbers_data_manager import Serial_Numbers_DataManager
from cla_data_manager import CLA_DataManager
from purchase_data_manager import PURCHASE_DataManager
#from frm_maker.UI_manufacturer import Ui_ManufacturersWindow
from WindowManufacturers import MANUFACTURERS_manager
import statslenses

settings.init()

class DatePickerPopup(QDialog):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Select Date")
        self.setLayout(QVBoxLayout())

        self.calendar = QCalendarWidget(self)
        self.calendar.setGridVisible(True)
        self.calendar.clicked.connect(self.accept)

        self.layout().addWidget(self.calendar)

    def get_selected_date(self):
        return self.calendar.selectedDate()

class MainWindowDatePicker(QMainWindow):
    def __init__(self):
        super().__init__()

    def open_date_picker(self):
        date_picker = DatePickerPopup()
        if date_picker.exec() == QDialog.Accepted:
            selected_date = date_picker.get_selected_date()
            #print(f"Selected date: {selected_date.toString('yyyy-MM-dd')}")
            #MainWindowDetails.le_purch_date.setText = selected_date.toString('yyyy-MM-dd')
            return selected_date.toString('yyyy-MM-dd')

class DatePickerPopup(QDialog):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Select Date")
        self.setLayout(QVBoxLayout())

        self.calendar = QCalendarWidget(self)
        self.calendar.setGridVisible(True)
        self.calendar.clicked.connect(self.accept)

        self.layout().addWidget(self.calendar)

    def get_selected_date(self):
        return self.calendar.selectedDate()

class CustomMenu(QMenu):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setStyleSheet("QMenu { menu-scrollable: 1; }")

    def showEvent(self, event):
        # Set the width of the menu
        self.setMinimumWidth(200)  # Set the desired width here
        super().showEvent(event)

class ColorDelegate(QStyledItemDelegate):
    def paint(self, painter, option, index):
            # Feldinhalt überprüfen (z. B. Spalte 1)
            value = index.siblingAtColumn(7).data(Qt.DisplayRole)
            if len(value) > 0:
                option.palette.setColor(QPalette.Text, QColor((value)))  # Textfarbe setzen
            super().paint(painter, option, index)

class MainWindowDetails(QMainWindow, Ui_MainWindowDetails):
    master_data_changed = Signal(int)  # Signal, das ausgelöst wird, wenn die Masterdaten geändert werden

    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.set_connect_events()
        self.saving_r_lens_spec = False  # Flag hinzufügen
        self.set_mappings(id)
        self.flag_insert = False
        self.flag_insert_purchase = False
        self.img_label.dragEnterEvent = self.dragEnterEvent
        self.img_label.dropEvent = self.dropEvent

        # Gruppiere die QLineEdit-Objekte für Lens_ownership in einem Dictionary
        self.line_edits_purchase = {
            "ID": self.le_pur_id,
            "ID_Lens": self.le_pur_id_lens,
            "Purchase_date": self.le_pur_purchase_date,
            "Purchase_price": self.le_pur_purchase_price,
            "Purchase_serial_no": self.le_pur_purchase_serial_no,
            "Purchase_from": self.le_pur_purchase_from,
            "Purchase_lens_colour": self.le_pur_purchase_lens_colour,
            "Purchase_lens_condition": self.le_pur_purchase_lens_condition,
            "Purchase_comment": self.le_pur_purchase_comment,
            "DateCreated": self.le_pur_datecreated,
            "DateChanged": self.le_pur_datechanged,
        }
        self.le_id.textChanged.connect(self.slot_set_glob_id)
        #self.master_data_changed.connect(self.set_glob_id(self.le_sale_id_lens.text()))
        # TAB Purchase
        # Hole das Tab-Widget "tb_sold"
        self.tab_widget_pur = self.findChild(QWidget, "tb_purchase")
        self.pur_detail_data_manager = PURCHASE_DataManager(self.tab_widget_pur, settings.glob_id, self.line_edits_purchase,
                                                       self.pb_purch_new, self.pb_purch_save, self.pb_purch_cancel,
                                                       self.pb_pur_previous, self.pb_pur_next, self.pb_pur_datepick)

        # Verbinde das Signal mit dem Slot in der DetailDataManager-Klasse
        self.master_data_changed.connect(self.pur_detail_data_manager.load_data_purchase)
        #
        #
        # Gruppiere die QLineEdit-Objekte für Lens_sale in einem Dictionary
        self.line_edits = {
            "ID": self.le_sale_id,
            "ID_Lens": self.le_sale_id_lens,
            "Sale_date": self.le_sale_date,
            "Sale_price": self.le_sale_price,
            "Sale_serial_no": self.le_sale_serial_no,
            "Sale_to": self.le_sale_to,
            "Sale_lens_colour": self.le_sale_lens_colour,
            "Sale_lens_condition": self.le_sale_lens_condition,
            "Sale__comment": self.le_sale_comment,
            "DateCreated": self.le_sale_datecreated,
            "DateChanged": self.le_sale_datechanged,
        }

        # Hole das Tab-Widget "tb_sold"
        self.tab_widget_sold = self.findChild(QWidget, "tb_sold")

        # Erstelle eine Instanz der Detaildaten-Klasse und übergib das Dictionary
        self.sale_detail_data_manager = Sale_DataManager(self.tab_widget_sold, self.line_edits,
                                                         self.pb_sale_new_sale, self.pb_sale_save,
                                                         self.pb_sale_previous, self.pb_sale_next, settings.glob_id)

        # Verbinde das Signal mit dem Slot in der DetailDataManager-Klasse
        self.master_data_changed.connect(self.sale_detail_data_manager.load_detail_data)


        # Serial Numbers
        self.tab_widget = self.findChild(QWidget, "tb_sn")
        print (f'Hier ist die ID vor dem s/n Aufruf: {settings.glob_id}')
        self.serial_numbers_detail_data_manager = Serial_Numbers_DataManager(self.tab_widget, settings.glob_id,
                                                                             self.tbl_serial_numbers, self.pb_add,
                                                                             self.pb_delete, self.pb_save_changes)
        self.master_data_changed.connect(self.serial_numbers_detail_data_manager.get_data_tableview)

        # CLA
        self.line_edits_cla = {
            "ID": self.le_cla_id,
            "ID_Lens": self.le_cla_id_lens,
            "CLA_reason": self.le_cla_reason,
            "CLA_warranty": self.le_cla_warranty,
            "CLA_serial_no": self.le_cla_serial_no,
            "CLA_date_shipment": self.le_cla_date_shipment,
            "CLA_recipient": self.le_cla_recipient,
            "CLA_eoc": self.le_cla_eoc,
            "CLA_date_arrival": self.le_cla_date_arrival,
            "CLA_actual_cost": self.le_cla_actual_cost,
            "CLA_comments": self.le_cla_comments,
            "DateCreated": self.le_cla_datecreated,
            "DateChanged": self.le_cla_datechanged,
        }
        self.tab_widget_cla = self.findChild(QWidget, "tb_cla")
        self.cla_detail_data_manager = CLA_DataManager(self.tab_widget_cla, settings.glob_id, self.line_edits_cla,
                                                         self.pb_cla_new, self.pb_cla_save,
                                                         self.pb_cla_previous, self.pb_cla_next)

        # Verbinde das Signal mit dem Slot in der DetailDataManager-Klasse
        self.master_data_changed.connect(self.cla_detail_data_manager.load_detail_data)

        # Lade die Masterdaten und übergib die ID an die Detaildaten-Klasse
        self.load_data(settings.glob_id)

    def slot_set_glob_id(self):
        self.set_glob_id(self.le_id.text())

    def set_glob_id(self, idlens):
        settings.glob_id = idlens
        print (f'//// >>>>> def set_glob_id: set idlens = {idlens}')
        window.refresh_tableview()
        #window.updater.request_update()
        print ('Update Lens list')

    def dragEnterEvent(self, event):
        if event.mimeData().hasUrls():
            event.acceptProposedAction()

    def dropEvent(self, event):
        if event.mimeData().hasUrls():
            urls = event.mimeData().urls()
            if urls:
                file_path = urls[0].toLocalFile()
                if file_path.lower().endswith('.jpg'):
                    self.handle_dropped_image(file_path)
                else:
                    QMessageBox.warning(self, "Ungültige Datei", "Bitte ziehen Sie eine JPG-Datei.")

    def handle_dropped_image(self, file_path):
        # Zeige das Bild im QLabel an
        pixmap = QPixmap(file_path)
        self.img_label.setPixmap(pixmap)
        destination = 'image' + str(self.le_id.text())
        #print (f'Destination: {destination}')
        # Kopiere das Bild in ein bestimmtes Verzeichnis
        target_directory = "images/" + str(self.le_id.text() + '.jpg') # Setze hier dein Zielverzeichnis
        target_path = shutil.copy(file_path, target_directory)
        print(f"Bild wurde nach {target_path} kopiert.")

    def set_connect_events(self):
        self.pb_first.clicked.connect(self.goto_first_record)
        self.pb_previous.clicked.connect(self.goto_previous_record)
        self.pb_next.clicked.connect(self.goto_next_record)
        self.pb_last.clicked.connect(self.goto_last_record)
        self.pb_new_lens.clicked.connect(self.insert_new_lens_prepare)
        self.pb_pur_datepick.clicked.connect(self.select_purchase_date)
        ## self.tb_overview.tabBarDoubleClicked.connect(self.invert_visible)

        self.pb_save.clicked.connect(self.insert_new_lens_database)

        self.pb_sale_datepick.clicked.connect(self.select_sale_date)
        self.pb_cla_date_shipment.clicked.connect(self.select_cla_date_shipment)
        self.pb_cla_date_return.clicked.connect(self.select_cla_date_return)
        self.pushButton_3.clicked.connect(self.slot_set_glob_id)



    def select_cla_date_return(self):
        my_date = MainWindowDatePicker.open_date_picker(self)
        if my_date is not None:
            self.le_cla_date_arrival.setText(my_date)

    def select_cla_date_shipment(self):
        my_date = MainWindowDatePicker.open_date_picker(self)
        if my_date is not None:
            self.le_cla_date_shipment.setText(my_date)

    def select_sale_date(self):
        my_date = MainWindowDatePicker.open_date_picker(self)
        if my_date is not None:
            self.le_sale_date.setText(my_date)


    def update_show_ID(self):
        self.label_showID.setText(str(self.lens_id))
        self.label_showID.show()

    def select_purchase_date(self):
        #print ('get_purchase_date')
        my_date = MainWindowDatePicker.open_date_picker(self)
        self.le_pur_purchase_date.setText(my_date)


    def invert_visible(self):
        self.le_pur_id.setVisible(not (self.le_pur_id.isVisible()))
        self.le_pur_id_lens.setVisible(not (self.le_pur_id_lens.isVisible()))
        self.le_pur_datechanged.setVisible(not (self.le_pur_datechanged.isVisible()))
        self.le_pur_datecreated.setVisible(not (self.le_pur_datecreated.isVisible()))

    def insert_new_lens_prepare(self):
        self.le_id.setVisible(False)
        self.le_id.setText(None)
        self.label_showID.setText(None)
        settings.glob_id = None
        print('>>>>>> self.le_id.text: ', self.le_id.text)
        self.le_makerid.setVisible(False)
        self.le_mountid.setVisible(False)
        row = self.model.rowCount()
        self.model.insertRow(row)
        self.mapper.setCurrentIndex(row)
        self.flag_insert = True

        # 6. UI-Status anpassen
        self.pb_new_lens.setEnabled(False)
        self.pb_save.setEnabled(True)
        self.pb_first.setEnabled(False)
        self.pb_previous.setEnabled(False)
        self.pb_next.setEnabled(False)
        self.pb_last.setEnabled(False)
        self.pb_purch_new.setEnabled(False)
        # Set default values for mountid and makerid
        self.le_mountid.setText('1')
        self.le_makerid.setText('1')
        self.set_image(99999)

    def insert_new_lens_database(self):

        if not self.flag_insert:
            self.update_database()  # Dies ist ein Update, kein Insert !
            return

        print("Neuen Objektivdatensatz hinzufügen...")

        # Submit all changes to the database
        if self.model.submitAll():
            print("Changes saved successfully.")
        else:
            print("Error saving changes:", self.model.lastError().text())
        self.flag_insert = False
        print (f'insert_new_lens_database, self.le_id.text(): {self.le_id.text()}')
        self.set_image(self.le_id.text())
        self.img_label.clear()
        #self.img_label.setPixmap(None)
        self.update_nav_buttons()
        window.refresh_tableview()

    def update_database(self):
        print('update_database')
        self.flag_insert = False
        if self.mapper.submit():    # Nicht unbedingt erforderlich, Daten in den Cache zu schreiben.
            print('Neue ID: ', self.le_id.text())
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

        window.refresh_tableview()

    def goto_first_record(self):
        self.mapper.toFirst()
        record = self.model.record(self.mapper.currentIndex())
        settings.glob_id = record.field("ID").value()
        self.set_id(settings.glob_id)
        self.set_image(settings.glob_id)
        #self.load_data_purchase()

    def goto_previous_record(self):
        print('goto_previous_record')
        self.mapper.revert()  # Änderungen im Modell zurücksetzen
        self.mapper.toPrevious()
        record = self.model.record(self.mapper.currentIndex())
        settings.glob_id = record.field("ID").value()
        self.set_id(settings.glob_id)
        self.set_image(settings.glob_id)


    def goto_next_record(self):
        print('goto_next_record')
        self.mapper.revert()  # Änderungen im Modell zurücksetzen
        self.mapper.toNext()
        record = self.model.record(self.mapper.currentIndex())
        settings.glob_id = record.field("ID").value()
        self.set_id(settings.glob_id)
        self.set_image(settings.glob_id)


    def goto_last_record(self):
        self.mapper.toLast()
        record = self.model.record(self.mapper.currentIndex())
        settings.glob_id = record.field("ID").value()
        self.set_id(settings.glob_id)
        self.set_image(settings.glob_id)
        #self.load_data_purchase()

    def set_image(self, id):
        path = 'images/' + str(settings.glob_id)
        print (f'set_image, Path: {path}')
        try:
            pixmap = QPixmap(path)
            width = self.width()
            pixmap = pixmap.scaledToWidth(1000)
            self.img_label.setPixmap(pixmap)
        except:
            print ('Could not load image')
            print(f'set_image, id-parameter: {id}')
            self.img_label.clear()
            #self.img_label.setPixmap(None)
            return

    def set_mappings(self, id):
        # ComboBox Models
        self.model_r_lens_spec = QSqlRelationalTableModel(self)
        self.model_r_lens_spec.setTable("Lenses")
        r_lens_spec_index = self.model_r_lens_spec.fieldIndex("R_lens_spec_Id")
        self.model_r_lens_spec.setRelation(r_lens_spec_index, QSqlRelation("R_lens_spec_t", "ID", "Spec"))

        # Basic information table "Lenses"
        self.model = QSqlTableModel()
        self.model.setTable("Lenses")
        #self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnManualSubmit)
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.mapper = QDataWidgetMapper(self)
        self.mapper.setModel(self.model)

        self.column_names = []  # Leere Liste zur Speicherung der Spaltennamen
        for i in range(self.model.columnCount()):  # ermittle alle Felder in Tabelle Lenses
            column_name = 'le_' + self.model.headerData(i, Qt.Horizontal).lower()  # Hole den Spaltennamen
            # print(f'>>>>>>>>>> Lens-column_name:*{column_name}*')
            self.column_names.append(column_name)  # Füge den Namen zur Liste hinzu

            # Widget-Objekt anhand des Namens abrufen
            widget = self.findChild(QtCore.QObject, column_name)
            if widget:
                self.mapper.addMapping(widget, i)
                # print(f"Widget Lenses {column_name} gemappt.")
            else:
                print(f"Widget {column_name} nicht gefunden.")



        # TAB Sold
        # Modell erstellen für Lens_sale
        self.model_sale = QSqlTableModel()
        self.model_sale.setTable("Lens_sale")
        self.model_sale.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model_sale.select()
        self.mapper_sale = QDataWidgetMapper(self)
        self.mapper_sale.setModel(self.model_sale)

        self.column_names_sale = []  # Leere Liste zur Speicherung der Spaltennamen
        for i in range(self.model_sale.columnCount()):  # ermittle alle Felder in Tabelle Lens_ownership
            column_names_sale_v = 'le_sale_' + self.model_sale.headerData(i,
                                                                          Qt.Horizontal).lower()  # Hole den Spaltennamen
            self.column_names_sale.append(column_names_sale_v)  # Füge den Namen zur Liste hinzu
            # Widget-Objekt anhand des Namens abrufen
            widget = self.findChild(QtCore.QObject, column_names_sale_v)
            if widget:
                self.mapper_sale.addMapping(widget, i)
                # print(f"Widget {column_names_sale_v} gemappt.")
            else:
                print(f"Widget {column_names_sale_v} nicht gefunden.")
            # Widget-Objekt anhand des Namens abrufen - Ende

    def set_id(self, id):
        #self.lens_id = id # Prüfen, ob das richtig ist !!!
        settings.glob_id = id   # self.lens_id
        #print(f"ID in MainWindowDetails: {self.lens_id}")

        ##self.label_showID.setText(str(self.lens_id))
        self.label_showID.setText(str(id))
        self.label_showID.show()

        self.load_data(id)

    def load_data(self, id):
        self.le_id.setVisible(False)
        self.le_mountid.setVisible(False)
        self.xyle_r_lens_spec.setVisible(False)
        self.xyle_row_colour.setVisible(False)
        self.xyle_r_lens_spec_id.setVisible(False)
        self.le_makerid.setVisible(False)
        self.flag_insert = False  # default: update record

        column_index = 0  # Spalte, in der gesucht wird
        self.set_image(id)

        """Sucht die ID im Modell und setzt den Mapper-Index."""
        search_id = id
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

        settings.glob_id = id
        self.set_combobox_delegates_mount(id)
        self.set_combobox_delegates_make(id)
        self.set_combobox_delegates_r_lens_spec(id)

        # Purchase - load data
        self.pur_detail_data_manager.load_data_purchase(settings.glob_id)
        self.master_data_changed.emit(settings.glob_id)

        # Sold - load data
        self.sale_detail_data_manager.load_detail_data(settings.glob_id)
        self.master_data_changed.emit(settings.glob_id)

        # CLS - load data
        self.cla_detail_data_manager.load_detail_data(settings.glob_id)
        self.master_data_changed.emit(settings.glob_id)

        # Serial numbers - load data
        self.serial_numbers_detail_data_manager.get_data_tableview(settings.glob_id)
        self.master_data_changed.emit(settings.glob_id)

    def update_nav_buttons(self):
        """Aktualisiert den Enabled-Status der Prev/Next-Buttons für Lenses Stammdaten."""
        if not self.model:  # Sicherstellen, dass Modell existiert
            return

        current_index = self.mapper.currentIndex()
        total_count = self.model.rowCount()  # Anzahl der *gefilterten* Datensätze

        # Vorheriger Button: Aktiv, wenn Index > 0 und Datensätze vorhanden sind
        self.pb_previous.setEnabled(current_index > 0 and total_count > 0)

        # Nächster Button: Aktiv, wenn Index gültig ist und nicht der letzte Datensatz
        self.pb_next.setEnabled(current_index < total_count - 1 and total_count > 0)


        #print(
        #    f"  Nav Buttons Update: Index={current_index}, Count={total_count}, Prev={self.pb_pur_previous.isEnabled()}, Next={self.pb_pur_next.isEnabled()}")

    def set_combobox_delegates_mount(self, id):
        self.model_mount = QSqlRelationalTableModel(self)
        self.model_mount.setTable("Lenses")
        sortby_column_toporder = 12     # column number 12
        # Beziehung zur Tabelle "Mounts" definieren
        mount_index = self.model_mount.fieldIndex("MountId")
        ##self.model_mount.setRelation(mount_index, QSqlRelation("Mounts", "ID", "MountName"))
        self.model_mount.setRelation(mount_index, QSqlRelation("view_Mount_types", "ID", "Mount_name"))
        self.model_mount.select()

        # Das relationModel holen
        model = self.model_mount.relationModel(mount_index)
        if model is not None:
            lens_id = id  # ID des aktuellen Objektivs
            settings.glob_id = id
            #print(f"set_combobox_delegates glob_id: {lens_id}")

            # Die MountId für dieses Objektiv holen
            lens_index = self.model_mount.match(self.model_mount.index(0, 0), Qt.DisplayRole, lens_id)
            if lens_index:
                row = lens_index[0].row()
                mount_id = self.model_mount.data(self.model_mount.index(row, mount_index), Qt.EditRole)
                print(f"Mount ID to find: {mount_id}")  # Debug-Ausgabe

                # ComboBox mit den Mount-Namen befüllen, aber die ID als UserRole setzen
                self.cb_mount.setModel(model)
                self.cb_mount.model().sort(sortby_column_toporder, Qt.AscendingOrder)
                self.cb_mount.setModelColumn(model.fieldIndex("Mount_name"))

                # Den passenden Index suchen basierend auf MountId (nicht Mount_name!)
                mount_index = self.cb_mount.findData(mount_id, Qt.DisplayRole)
                if mount_index >= 0:
                    self.cb_mount.setCurrentIndex(mount_index)
                else:
                    pass
                    #print(f"Mount-ID {mount_id} not found in ComboBox model")
            else:
                pass
                #print("No matching lens index found")
        else:
            pass
            #print("Relation model is None")

        self.cb_mount.currentIndexChanged.connect(self.save_mount_selection)

    def set_combobox_delegates_make(self, id):
        self.model_make = QSqlRelationalTableModel(self)
        self.model_make.setTable("Lenses")
        sortby_column_toporder = 8
        # Beziehung zur Tabelle "Makers" definieren
        make_index = self.model_make.fieldIndex("MakerId")
        self.model_make.setRelation(make_index, QSqlRelation("Makers_view", "ID", "MakerName"))
        self.model_make.select()

        # Das relationModel holen
        model = self.model_make.relationModel(make_index)
        if model is not None:
            lens_id = id  # ID des aktuellen Objektivs
            settings.glob_id = id
            #print(f"set_combobox_delegates glob_id: {lens_id}")

            # Die MakeId für dieses Objektiv holen
            lens_index = self.model_make.match(self.model_make.index(0, 0), Qt.DisplayRole, lens_id)
            if lens_index:
                row = lens_index[0].row()
                make_id = self.model_make.data(self.model_make.index(row, make_index), Qt.EditRole)
                #make_id = '1'
                #self.le_makerid.setText(make_id) # manuelles setzten
                print(f"Make ID to find: {make_id}")  # Debug-Ausgabe

                # ComboBox mit den Make-Namen befüllen, aber die ID als UserRole setzen
                self.cb_make.setModel(model)
                #self.cb_make.model().sort(sortby_column_toporder, Qt.AscendingOrder)
                self.cb_make.setModelColumn(model.fieldIndex("MakerName"))

                # Den passenden Index suchen basierend auf MakeId (nicht MakerName!)
                make_index = self.cb_make.findData(make_id, Qt.DisplayRole)
                if make_index >= 0:
                    self.cb_make.setCurrentIndex(make_index)
                else:
                    pass
                    #print(f"Make-ID {make_id} not found in ComboBox model")
            else:
                pass
                #print("No matching lens index found")
        else:
            pass
            #print("Relation model is None")

        self.cb_make.currentIndexChanged.connect(self.save_make_selection)

    def set_combobox_delegates_r_lens_spec(self, id):
        # Verwenden Sie QSqlRelationalTableModel, um die Daten abzurufen
        self.model_r_lens_spec = QSqlRelationalTableModel(self)
        self.model_r_lens_spec.setTable("R_lens_spec_t")
        self.model_r_lens_spec.setEditStrategy(QSqlTableModel.OnManualSubmit)
        self.model_r_lens_spec.select()

        # Überprüfen, ob das Modell korrekt geladen wurde
        if self.model_r_lens_spec.lastError().isValid():
            print(f"Fehler beim Laden des Modells: {self.model_r_lens_spec.lastError().text()}")
            return

        # ComboBox mit den Spec-Namen befüllen, aber die ID als UserRole setzen
        self.cb_r_lens_spec.setModel(self.model_r_lens_spec)
        self.cb_r_lens_spec.setModelColumn(self.model_r_lens_spec.fieldIndex("Spec"))  # Spec-Spalte

        # Den passenden Index suchen basierend auf R_lens_spec_Id
        lens_spec_id_query = QSqlQuery()
        lens_spec_id_query.prepare("SELECT R_lens_spec_Id FROM Lenses WHERE ID = :id")
        lens_spec_id_query.bindValue(":id", id)
        lens_spec_id = None
        if lens_spec_id_query.exec() and lens_spec_id_query.next():
            lens_spec_id = lens_spec_id_query.value(0)
        else:
            print(f"Fehler beim Abrufen von R_lens_spec_Id: {lens_spec_id_query.lastError().text()}")
            return

        #print(f"lens_spec_id: {lens_spec_id}")  # Debug-Ausgabe

        if lens_spec_id is not None:
            # Manuell nach der ID suchen
            for row in range(self.model_r_lens_spec.rowCount()):
                index = self.model_r_lens_spec.index(row, self.model_r_lens_spec.fieldIndex("ID"))
                id_value = self.model_r_lens_spec.data(index, Qt.DisplayRole)
                if id_value == lens_spec_id:
                    self.cb_r_lens_spec.setCurrentIndex(row)
                    #print(f"R_lens_spec_Id {lens_spec_id} manually found at index {row}")
                    break
            else:
                print(f"set_combobox_delegates_r_lens_spec: {lens_spec_id} not found in ComboBox model")
        else:
            print("lens_spec_id is None")

        self.cb_r_lens_spec.currentIndexChanged.connect(self.save_r_lens_spec_selection)

    def save_mount_selection(self, index):
        if index < 0:
            return

        # Hole den neuen Mount-Name aus der ComboBox
        mount_name = self.cb_mount.currentText()

        # Hole die dazugehörige Mount-ID aus der Tabelle Mounts
        model = self.cb_mount.model()
        mount_id_index = model.index(index, model.fieldIndex("ID"))
        mount_id = model.data(mount_id_index, Qt.DisplayRole)

        print(f"Saving Mount ID {mount_id} for Lens ID {settings.glob_id}")
        self.le_mountid.setText(str(mount_id)) ## ob das stimmt?

        # Holen Sie den aktuellen Index des Mappers
        current_index = self.mapper.currentIndex()

        # Holen Sie den Spaltenindex des Feldes, das mit self.le_mountid verbunden ist
        column_index = self.model.fieldIndex("MountId")  # Ersetzen Sie "MountId" durch den tatsächlichen Spaltennamen

        # Erstellen Sie einen QModelIndex für die Zelle, die Sie ändern möchten
        model_index = self.model.index(current_index, column_index)

        # Setzen Sie den Wert im Modell
        self.model.setData(model_index, int(mount_id))

        if self.model.isDirty():
            print ('Model is dirty now')
        return

        # Speichere die Änderung in die Lenses-Tabelle
        '''
        if settings.glob_id:
            query = QSqlQuery()
            query.prepare("UPDATE Lenses SET MountId = :mount_id WHERE ID = :lens_id")
            query.bindValue(":mount_id", mount_id)
            query.bindValue(":lens_id", settings.glob_id)

            if not query.exec():
                print("Database update failed:", query.lastError().text())
            else:
                print("Mount ID successfully updated in Lenses table.")

        self.model_mount.submitAll()
        '''

    def save_make_selection(self, index):
        if index < 0:
            return

        # Hole den neuen maker-Name aus der ComboBox
        maker_name = self.cb_make.currentText()

        # Hole die dazugehörige maker-ID aus der Tabelle makers
        model = self.cb_make.model()
        maker_id_index = model.index(index, model.fieldIndex("ID"))
        maker_id = model.data(maker_id_index, Qt.DisplayRole)

        print(f"Saving maker ID {maker_id} for Lens ID {settings.glob_id}")
        self.le_makerid.setText(str(maker_id))

        # Holen Sie den aktuellen Index des Mappers
        current_index = self.mapper.currentIndex()

        # Holen Sie den Spaltenindex des Feldes, das mit self.le_mountid verbunden ist
        column_index = self.model.fieldIndex("MakerId")  # Ersetzen Sie "MountId" durch den tatsächlichen Spaltennamen

        # Erstellen Sie einen QModelIndex für die Zelle, die Sie ändern möchten
        model_index = self.model.index(current_index, column_index)

        # Setzen Sie den Wert im Modell
        self.model.setData(model_index, int(maker_id))
        if self.model.isDirty():
            print ('save_make_selection ----> isDirty')

        return

    def save_r_lens_spec_selection(self, index):
        if self.saving_r_lens_spec: # Überprüfung hinzufügen
            return

        self.saving_r_lens_spec = True # Flag setzen
        if index < 0:
            self.saving_r_lens_spec = False
            return

        # Vorübergehend das Signal abkoppeln
        self.cb_r_lens_spec.currentIndexChanged.disconnect(self.save_r_lens_spec_selection)

        try:
            # Hole den neuen R-lens-spec-Name aus der ComboBox
            spec_name = self.cb_r_lens_spec.currentText()
            print('save_r_lens_spec_selection spec_name: ', spec_name)

            # Hole die dazugehörige R_lens_spec_Id aus dem Modell
            model = self.cb_r_lens_spec.model()
            r_lens_spec_id_index = model.index(index, model.fieldIndex("ID"))
            r_lens_spec_id = model.data(r_lens_spec_id_index, Qt.DisplayRole)
            print('save_r_lens_spec_selection r_lens_spec_id: ', r_lens_spec_id)
            print(f"Saving r_lens_spec ID {r_lens_spec_id} for Lens ID {settings.glob_id}")

            # Speichere die Änderung in die Lenses-Tabelle
            if settings.glob_id:
                query = QSqlQuery()
                query.prepare("UPDATE Lenses SET R_lens_spec_Id = :r_lens_spec_id WHERE ID = :lens_id")
                query.bindValue(":r_lens_spec_id", r_lens_spec_id)
                query.bindValue(":lens_id", settings.glob_id)

                if not query.exec():
                    print("Database update failed:", query.lastError().text())
                else:
                    print("R_lens_spec_Id successfully updated in Lenses table.")

            self.model_r_lens_spec.submitAll()
        finally:
            # Signal wieder ankoppeln
            self.cb_r_lens_spec.currentIndexChanged.connect(self.save_r_lens_spec_selection)
            self.saving_r_lens_spec = False # Flag zurücksetzen

    def closeEvent(self, event):
            event.accept()

class MainWindow(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.manufacturers_window = None
        self.setupUi(self)
        self.get_data_tableview()
        self.set_contextmenu()

        # tableView doubleClick event
        tbl_view = self.window().findChild(QTableView, "tbl_all_lenses")
        tbl_view.doubleClicked.connect(self.double_click_tableview)
        self.action_Manufacturers_2.triggered.connect(self.open_frm_manufacturers)
        self.actionM_ounts_2.triggered.connect(self.open_frm_mount_types)
        self.action_Quit_3.triggered.connect(self.quit_app)
        self.checkBox_mylenses.stateChanged.connect(self.onStateChanged)
        self.actionNo_help_available_2.triggered.connect(self.app_help)
        self.pb_reset_sort.clicked.connect(self.reset_sort)

        # MainWindowDetails-Instanz erstellen
        self.second_window = None

        # Connect the search line edit to the filter method
        self.search_line_edit.textChanged.connect(self.filter_table)
        self.pb_del_search_line_edit.clicked.connect(self.clear_search_line)
        self.search_line_edit.setFocus()

        self.cmb_select.addItem('Focal Length: all')
        self.cmb_select.addItem('Focal Length: only own lenses')
        self.cmb_select.addItem('Max Aperture: all')
        self.cmb_select.addItem('Max Aperture: only own lenses')
        self.cmb_select.currentTextChanged.connect(self.cmb_select_changed)

    def cmb_select_changed(self):
        if self.cmb_select.currentIndex() == 0:
            mysql = """select count(ID) No, FocalLength FROM Lenses WHERE LensLabel not Like '%Test%' GROUP BY FocalLength_sort"""
            charttitle = 'All lenses in the database'
            var_xlabel = 'Focal Length'
        elif self.cmb_select.currentIndex() == 1:
            mysql = """select  Count(ID) No, FocalLength FROM Lenses where Row_colour not NULL AND LensLabel not Like '%Test%' Group by FocalLength"""
            charttitle = 'Number of my lenses per focal length'
            var_xlabel = 'Focal Length'
        elif self.cmb_select.currentIndex() == 2:
            mysql = """select  Count(ID) No, MaxAperture FROM Lenses WHERE LensLabel not Like '%Test%' Group by MaxAperture"""
            charttitle = 'Number of my lenses per Max Aperture'
            var_xlabel = 'Max Aperture'
        elif self.cmb_select.currentIndex() == 3:
            mysql = """select  Count(ID) No, MaxAperture FROM Lenses where Row_colour not NULL AND LensLabel not Like '%Test%' Group by MaxAperture"""
            charttitle = 'Number of my lenses per Max Aperture'
            var_xlabel = 'Max Aperture'
        else:
            pass
        statslenses.MainWindowStats(mysql, charttitle, var_xlabel)
        print('cmb_select_changed: ', self.cmb_select.currentIndex(), ' ', self.cmb_select.currentText())

    def onStateChanged(self):
        if self.checkBox_mylenses.isChecked():
            print ('checked')
            self.getonly_myownlenses()
            self.search_line_edit.setEnabled(False)
        else:
            print ('unchecked')
            #self.search_line_edit.setText('')
            self.clear_search_line()
            self.filter_table('')
            self.search_line_edit.setEnabled(True)

        #self.search_line_edit.textChanged.connect(self.filter_table)
        #self.checkBox_mylenses.stateChanged.connect(self.onStateChanged)
        #QTimer.singleShot(2000, self.clear_search_line)

    def open_frm_mount_types(self):
        # Erstellen Sie eine Instanz IHRER KLASSE, die das Fenster darstellt
        self.mount_types_window = MOUNT_TYPE_manager()  # <-- HIER die Korrektur!
        # self.manufacturers_window.set_id(settings.glob_id)  # ID übergeben (wenn MANUFACTURERS_manager eine set_id Methode hat)
        self.mount_types_window.show()  # <-- Jetzt hat diese Instanz die show()-Methode
        self.mount_types_window.setWindowTitle('Mount Types')
        # print('open_frm_mount_types')

    def open_frm_manufacturers(self):
        # Erstellen Sie eine Instanz IHRER KLASSE, die das Fenster darstellt
        self.manufacturers_window = MANUFACTURERS_manager()  # <-- HIER die Korrektur!
        # self.manufacturers_window.set_id(settings.glob_id)  # ID übergeben (wenn MANUFACTURERS_manager eine set_id Methode hat)
        self.manufacturers_window.show()  # <-- Jetzt hat diese Instanz die show()-Methode
        self.manufacturers_window.setWindowTitle('Lens Manufacturers')
        #print('open_frm_manufacturers')


    def reset_sort(self):
        print('reset_sort')
        #self.model.setSort(8, Qt.AscendingOrder)  # Sortiere standardmäßig nach der Spalte "FocalLength_sort"
        '''self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.setSort(8, Qt.AscendingOrder)  # Sortiere standardmäßig nach der Spalte "FocalLength_sort"
        self.model.select()
        '''
        self.tbl_all_lenses.sortByColumn(8,
                                         Qt.AscendingOrder)  # Sortiere nach der vierten Spalte (FocalLength_sort)
        self.clear_search_line()

    def clear_search_line(self):
        self.search_line_edit.setText(None)

    def double_click_tableview(self, signal):
        row = signal.row()
        column = signal.column()
        model = self.tbl_all_lenses.model()
        value = model.data(model.index(row, 2), Qt.DisplayRole)
        settings.glob_id = model.data(model.index(row, 0), Qt.DisplayRole)
        print('value text: ', value, '  ID:  ', settings.glob_id)
        #self.refresh_tableview()
        self.opendetails()

    def refresh_tableview(self):
        #self.model.setQuery('Select ID, LensLabel, MaxAperture, MinAperture, FocalLength, LensType, Production_era, Row_colour from Lenses order by FocalLength_sort')
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        self.tbl_all_lenses.sortByColumn(8,
                                         Qt.AscendingOrder)  # Sortiere nach der vierten Spalte (FocalLength_sort)
        #self.model.setSort(8, Qt.AscendingOrder)  # Sortiere standardmäßig nach der Spalte "FocalLength_sort"

    def set_contextmenu(self):
        # Kontextmenü erstellen
        self.context_menu = CustomMenu(self)
        self.context_menu.setMinimumWidth(350)
        self.action_details = QAction("Details", self)
        self.action_setcolor = QAction("Set Color", self)
        self.action_resetcolor = QAction("Reset Color to None", self)
        self.context_menu.addAction(self.action_details)
        self.context_menu.addAction(self.action_setcolor)
        self.context_menu.addAction(self.action_resetcolor)

        # Kontextmenü-Aktionen verbinden
        self.action_details.triggered.connect(self.opendetails)
        self.action_setcolor.triggered.connect(self.opencolors)
        self.action_resetcolor.triggered.connect(self.resetcolors)  # resetcolors

        # Kontextmenü mit tableView verbinden
        self.tbl_all_lenses.setContextMenuPolicy(Qt.CustomContextMenu)
        self.tbl_all_lenses.customContextMenuRequested.connect(self.show_context_menu)

    def show_context_menu(self, position):
        # Kontextmenü an der Mausposition anzeigen
        # Zeilenindex ermitteln
        index = self.tbl_all_lenses.indexAt(position)
        if not index.isValid():
            return
        row = index.row()

        # ID auslesen
        id_index = self.model.index(row, 0)
        settings.glob_id = self.model.data(id_index, Qt.DisplayRole)
        print ('ID in der Zeile ist: ', settings.glob_id)
        self.context_menu.exec(self.tbl_all_lenses.viewport().mapToGlobal(position))

    def opendetails(self):
        #if self.details_window is None:
        print('opendetails')
        self.details_window = MainWindowDetails()
        self.details_window.set_id(settings.glob_id)  # ID übergeben
        self.details_window.show()

    def get_distictcolors(self, dialog):
        i = 0
        for i in range(15):
            dialog.setCustomColor(i, '#ffffff')

        query_colors = QSqlQuery()
        mysql = "SELECT distinct(lower(Row_colour)) Row_colour from Lenses where Row_colour is not NULL"
        query_colors.exec(mysql)
        i = 0
        while query_colors.next():
            print('Farbe: ', query_colors.value('Row_colour'))
            dialog.setCustomColor(i,query_colors.value('Row_colour'))
            i += 1

    def opencolors(self):
        layout = QGridLayout()
        self.setLayout(layout)
        dialog = QColorDialog()
        self.get_distictcolors(dialog)
        dialog.setSizeGripEnabled(True)
        #dialog.layout().setSizeConstraint(QLayout.SetNoConstraint)

        color = dialog.getColor()

        if QColor.isValid(color):
            print("Selected Color Information:", color.name())
            # Update Lenses set Row_colour = color.name() where ID = settings.glob_id
            if settings.glob_id == None:
                return
            else:
                sql_stmt = f'''Update Lenses set Row_colour ='{color.name().lower()}' WHERE id={settings.glob_id} '''
                print('UPDATE sql_stmt: ', sql_stmt)
                insertDataQuery = QSqlQuery()
                insertDataQuery.exec(sql_stmt)
                self.refresh_tableview()

    def resetcolors(self):
        sql_stmt = f'''Update Lenses set Row_colour = NULL WHERE id={settings.glob_id} '''
        print('UPDATE sql_stmt: ', sql_stmt)
        insertDataQuery = QSqlQuery()
        insertDataQuery.exec(sql_stmt)
        self.refresh_tableview()

    def set_frontimage(self):
        path = 'images/front.jpg'
        print(f'set_image, Path: {path}')
        try:
            pixmap = QPixmap(path)
            self.lb_frontimage.setPixmap(pixmap)
            self.resize_image()  # Skaliere das Bild beim ersten Laden
        except Exception as e:
            print('Could not load image')
            print(f'Error: {e}')
            self.lb_frontimage.clear()

    def getonly_myownlenses(self):
        filter_query = f"""
                Select Lenses.ID, Lenses.LensLabel, Lenses.MaxAperture, Lenses.MinAperture, Lenses.FocalLength, Mount_types.Mount_name, Lenses.Production_era,
                Lenses.Row_colour from
                Lenses INNER JOIN Mount_types on Mount_types.ID=Lenses.MountId
                WHERE Lenses.Row_Colour is not NULL
                ORDER BY FocalLength_sort, LensLabel
                """
        self.model.setQuery(filter_query)

    def get_data_tableview(self):
        db = QtSql.QSqlDatabase.addDatabase('QSQLITE')
        db.setDatabaseName('/home/det/PycharmProjects/write_metadata/lereg.sqlite')
        #db.setDatabaseName('lereg.sqlite')
        if not db.open():  # add this line to open the database
            print("Error: Could not open database")  # add error handling.
            return
        '''self.model = QSqlQueryModel(self)
        self.model.setQuery('Select Lenses.ID, Lenses.LensLabel, Lenses.MaxAperture, Lenses.MinAperture, Lenses.FocalLength, Mounts.MountName, Lenses.Production_era, '
                            'Lenses.Row_colour from '
                            'Lenses INNER JOIN Mounts on Mounts.ID=Lenses.MountId ORDER by Lenses.FocalLength_sort, '
                             'LensLabel')
        # Model dem QTableView zuweisen
        self.tbl_all_lenses.setModel(self.model)
        '''
        # Verwende QSqlTableModel und die View "LensesView"
        self.model = QSqlTableModel(self)
        self.model.setTable("LensesView")
        self.model.setEditStrategy(QSqlTableModel.EditStrategy.OnFieldChange)
        self.model.select()
        # self.model.setSort(8, Qt.AscendingOrder)  # Sortiere standardmäßig nach der Spalte "FocalLength_sort"


        if self.tbl_all_lenses:
            print ('tbl_all_lenses korrekt gefunden')
            self.tbl_all_lenses.setModel(self.model)
            # Erste Spalte ausblenden
            header = self.tbl_all_lenses.horizontalHeader()
            header.hideSection(0)  # Spalte 0 ausblenden
            header.hideSection(7)  # Spalte 7 Row_colour ausblenden
            header.hideSection(8)  # Lenses.FocalLength_sort ausblenden

            # Spaltenbreite anpassen (optional)
            #header.setSectionResizeMode(1, QHeaderView.Stretch)
            header.resizeSection(1, 750)
            header.resizeSection(2, 110)
            header.resizeSection(3, 100)
            header.resizeSection(4, 200)
            header.resizeSection(5, 205)
            header.resizeSection(6, 750)

            # Überschriften ändern
            self.model.setHeaderData(1, Qt.Horizontal, "Lens")
            self.model.setHeaderData(2, Qt.Horizontal, "Max AP")
            self.model.setHeaderData(3, Qt.Horizontal, "Min AP")
            self.model.setHeaderData(4, Qt.Horizontal, "Focal Len")
            self.model.setHeaderData(5, Qt.Horizontal, "Mount")
            self.model.setHeaderData(6, Qt.Horizontal, "Production Era")

            # Überschriften linksbündig anordnen
            header = self.tbl_all_lenses.horizontalHeader()
            header.setDefaultAlignment(Qt.AlignLeft | Qt.AlignVCenter)

            # Benutzerdefinierten Delegate zuweisen
            delegate = ColorDelegate(self.tbl_all_lenses)
            self.tbl_all_lenses.setItemDelegateForColumn(1, delegate)  # Spalte 1 überprüfen
            self.tbl_all_lenses.setSortingEnabled(True)
            self.tbl_all_lenses.sortByColumn(8,
                                             Qt.AscendingOrder)  # Sortiere nach der vierten Spalte (FocalLength_sort)
            # Vertikalen Header ausblenden
            self.tbl_all_lenses.verticalHeader().setVisible(False)

        else:
            print("Error: tbl_all_lenses not found")

    def filter_table(self, text):
        # Filter the table based on the search text
        print (f'Pressed: {text}')
        self.checkBox_mylenses.setChecked(False)
        filter_query = f"""
        Select Lenses.ID, Lenses.LensLabel, Lenses.MaxAperture, Lenses.MinAperture, Lenses.FocalLength, Mount_types.Mount_name, Lenses.Production_era,
        Lenses.Row_colour from
        Lenses INNER JOIN Mount_types on Mount_types.ID=Lenses.MountId
        WHERE Lenses.LensLabel LIKE '%{text}%' OR Mount_types.Mount_name LIKE '%{text}%'  
        OR Lenses.MaxAperture LIKE '%{text}%' 
        OR Lenses.MinAperture LIKE '%{text}%' 
        OR Lenses.FocalLength LIKE '%{text}%' 
        OR Lenses.Production_era LIKE '%{text}%' 
        ORDER by Lenses.FocalLength_sort
        """
        self.model.setQuery(filter_query)

    def quit_app(self):
        print ('quit_app')
        app.quit()

    def app_help(self):
        msg = QMessageBox()
        msg.setIcon(QMessageBox.Icon.Information)
        msg.setText("\n\n\n\n    There is no such thing as help !       \n\n\n\n")
        msg.setWindowTitle("Help on help")
        msg.setStandardButtons(QMessageBox.StandardButton.Ok)
        retval = msg.exec()

    def closeEvent(self, event):
        try:
            self.details_window.close()
        except:
            pass
        try:
            self.manufacturers_window.close()
        except:
            pass
        event.accept()

if __name__ == '__main__':
    app = QApplication(sys.argv)

    window: MainWindow = MainWindow()
    window.show()
    window.setWindowTitle("Lens Database")
    app.exec()
