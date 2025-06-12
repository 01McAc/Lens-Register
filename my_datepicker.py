import sys
from PySide6.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QPushButton, QCalendarWidget, QDialog
)
from PySide6.QtCore import QDate

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

class MainWindowDatePicker(QWidget):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Date Picker Example")
        self.setLayout(QVBoxLayout())

        self.button = QPushButton("Open Date Picker", self)
        self.button.clicked.connect(self.open_date_picker)

        self.layout().addWidget(self.button)

    def open_date_picker(self):
        date_picker = DatePickerPopup()
        if date_picker.exec() == QDialog.Accepted:
            selected_date = date_picker.get_selected_date()
            print(f"Selected date: {selected_date.toString('yyyy-MM-dd')}")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindowDatePicker()
    window.show()
    sys.exit(app.exec())
