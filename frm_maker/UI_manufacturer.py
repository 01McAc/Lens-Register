# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'UI_manufacturer.ui'
##
## Created by: Qt User Interface Compiler version 6.9.0
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QAction, QBrush, QColor, QConicalGradient,
    QCursor, QFont, QFontDatabase, QGradient,
    QIcon, QImage, QKeySequence, QLinearGradient,
    QPainter, QPalette, QPixmap, QRadialGradient,
    QTransform)
from PySide6.QtWidgets import (QApplication, QComboBox, QFrame, QGridLayout,
    QHBoxLayout, QHeaderView, QLabel, QLineEdit,
    QMainWindow, QMenuBar, QPlainTextEdit, QPushButton,
    QSizePolicy, QSpacerItem, QStatusBar, QTableView,
    QVBoxLayout, QWidget)

class Ui_ManufacturersWindow(object):
    def setupUi(self, ManufacturersWindow):
        if not ManufacturersWindow.objectName():
            ManufacturersWindow.setObjectName(u"ManufacturersWindow")
        ManufacturersWindow.resize(2182, 1198)
        self.action_Quit = QAction(ManufacturersWindow)
        self.action_Quit.setObjectName(u"action_Quit")
        self.action_Manufacturer = QAction(ManufacturersWindow)
        self.action_Manufacturer.setObjectName(u"action_Manufacturer")
        self.actionM_ounts = QAction(ManufacturersWindow)
        self.actionM_ounts.setObjectName(u"actionM_ounts")
        self.actionNo_help_available = QAction(ManufacturersWindow)
        self.actionNo_help_available.setObjectName(u"actionNo_help_available")
        self.centralwidget = QWidget(ManufacturersWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.gridLayout_2 = QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.frame_navigation = QFrame(self.centralwidget)
        self.frame_navigation.setObjectName(u"frame_navigation")
        self.frame_navigation.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_navigation.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout = QHBoxLayout(self.frame_navigation)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_2)

        self.pb_first = QPushButton(self.frame_navigation)
        self.pb_first.setObjectName(u"pb_first")
        icon = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipBackward))
        self.pb_first.setIcon(icon)
        self.pb_first.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_first)

        self.pb_previous = QPushButton(self.frame_navigation)
        self.pb_previous.setObjectName(u"pb_previous")
        icon1 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoPrevious))
        self.pb_previous.setIcon(icon1)
        self.pb_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_previous)

        self.pb_next = QPushButton(self.frame_navigation)
        self.pb_next.setObjectName(u"pb_next")
        icon2 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoNext))
        self.pb_next.setIcon(icon2)
        self.pb_next.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_next)

        self.pb_last = QPushButton(self.frame_navigation)
        self.pb_last.setObjectName(u"pb_last")
        icon3 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipForward))
        self.pb_last.setIcon(icon3)
        self.pb_last.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_last)


        self.gridLayout_2.addWidget(self.frame_navigation, 3, 0, 1, 1)

        self.frame_2 = QFrame(self.centralwidget)
        self.frame_2.setObjectName(u"frame_2")
        self.frame_2.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_2.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_2 = QHBoxLayout(self.frame_2)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.pb_new = QPushButton(self.frame_2)
        self.pb_new.setObjectName(u"pb_new")
        icon4 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.ListAdd))
        self.pb_new.setIcon(icon4)
        self.pb_new.setIconSize(QSize(32, 32))

        self.horizontalLayout_2.addWidget(self.pb_new)

        self.pb_save = QPushButton(self.frame_2)
        self.pb_save.setObjectName(u"pb_save")
        icon5 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DocumentSave))
        self.pb_save.setIcon(icon5)
        self.pb_save.setIconSize(QSize(32, 32))

        self.horizontalLayout_2.addWidget(self.pb_save)


        self.gridLayout_2.addWidget(self.frame_2, 0, 0, 1, 1)

        self.frame = QFrame(self.centralwidget)
        self.frame.setObjectName(u"frame")
        self.frame.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout = QGridLayout(self.frame)
        self.gridLayout.setObjectName(u"gridLayout")
        self.le_website = QLineEdit(self.frame)
        self.le_website.setObjectName(u"le_website")

        self.gridLayout.addWidget(self.le_website, 7, 3, 1, 7)

        self.label_5 = QLabel(self.frame)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_5.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout.addWidget(self.label_5, 10, 8, 1, 1)

        self.le_makername = QLineEdit(self.frame)
        self.le_makername.setObjectName(u"le_makername")

        self.gridLayout.addWidget(self.le_makername, 3, 3, 1, 7)

        self.le_information = QPlainTextEdit(self.frame)
        self.le_information.setObjectName(u"le_information")

        self.gridLayout.addWidget(self.le_information, 8, 3, 1, 7)

        self.le_logopath = QLineEdit(self.frame)
        self.le_logopath.setObjectName(u"le_logopath")

        self.gridLayout.addWidget(self.le_logopath, 6, 3, 1, 7)

        self.label_4 = QLabel(self.frame)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_4, 7, 0, 1, 1)

        self.le_countryid = QLineEdit(self.frame)
        self.le_countryid.setObjectName(u"le_countryid")

        self.gridLayout.addWidget(self.le_countryid, 4, 8, 1, 1)

        self.label_7 = QLabel(self.frame)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_7.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout.addWidget(self.label_7, 10, 0, 1, 1)

        self.label_2 = QLabel(self.frame)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_2, 4, 0, 1, 1)

        self.cb_country = QComboBox(self.frame)
        self.cb_country.setObjectName(u"cb_country")

        self.gridLayout.addWidget(self.cb_country, 4, 3, 1, 3)

        self.label_10 = QLabel(self.frame)
        self.label_10.setObjectName(u"label_10")
        self.label_10.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_10.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignTop)

        self.gridLayout.addWidget(self.label_10, 8, 0, 1, 1)

        self.label_8 = QLabel(self.frame)
        self.label_8.setObjectName(u"label_8")
        font = QFont()
        font.setPointSize(38)
        font.setBold(True)
        self.label_8.setFont(font)
        self.label_8.setStyleSheet(u"color: rgb(255, 185, 88); ")

        self.gridLayout.addWidget(self.label_8, 1, 0, 1, 1)

        self.le_datechanged = QLineEdit(self.frame)
        self.le_datechanged.setObjectName(u"le_datechanged")
        sizePolicy = QSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Fixed)
        sizePolicy.setHorizontalStretch(10)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.le_datechanged.sizePolicy().hasHeightForWidth())
        self.le_datechanged.setSizePolicy(sizePolicy)
        self.le_datechanged.setMinimumSize(QSize(260, 0))

        self.gridLayout.addWidget(self.le_datechanged, 10, 9, 1, 1)

        self.le_toporder = QLineEdit(self.frame)
        self.le_toporder.setObjectName(u"le_toporder")
        self.le_toporder.setMaximumSize(QSize(100, 16777215))

        self.gridLayout.addWidget(self.le_toporder, 10, 3, 1, 1)

        self.le_datecreated = QLineEdit(self.frame)
        self.le_datecreated.setObjectName(u"le_datecreated")
        self.le_datecreated.setMinimumSize(QSize(260, 0))

        self.gridLayout.addWidget(self.le_datecreated, 10, 6, 1, 2)

        self.label_6 = QLabel(self.frame)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_6, 10, 5, 1, 1)

        self.label = QLabel(self.frame)
        self.label.setObjectName(u"label")
        self.label.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label, 3, 0, 1, 1)

        self.label_9 = QLabel(self.frame)
        self.label_9.setObjectName(u"label_9")

        self.gridLayout.addWidget(self.label_9, 2, 0, 1, 1)

        self.le_id = QLineEdit(self.frame)
        self.le_id.setObjectName(u"le_id")

        self.gridLayout.addWidget(self.le_id, 4, 6, 1, 1)

        self.label_3 = QLabel(self.frame)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_3, 6, 0, 1, 1)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer, 10, 4, 1, 1)


        self.gridLayout_2.addWidget(self.frame, 1, 0, 1, 1)

        self.label_11 = QLabel(self.centralwidget)
        self.label_11.setObjectName(u"label_11")

        self.gridLayout_2.addWidget(self.label_11, 2, 0, 1, 1)

        self.frame_quickselect = QFrame(self.centralwidget)
        self.frame_quickselect.setObjectName(u"frame_quickselect")
        self.frame_quickselect.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_quickselect.setFrameShadow(QFrame.Shadow.Raised)
        self.verticalLayout = QVBoxLayout(self.frame_quickselect)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.tbl_quickview = QTableView(self.frame_quickselect)
        self.tbl_quickview.setObjectName(u"tbl_quickview")
        self.tbl_quickview.setMinimumSize(QSize(0, 0))
        self.tbl_quickview.setBaseSize(QSize(500, 0))
        self.tbl_quickview.setFrameShadow(QFrame.Shadow.Plain)
        self.tbl_quickview.setSortingEnabled(True)

        self.verticalLayout.addWidget(self.tbl_quickview)


        self.gridLayout_2.addWidget(self.frame_quickselect, 1, 1, 1, 1)

        ManufacturersWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(ManufacturersWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 2182, 38))
        ManufacturersWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(ManufacturersWindow)
        self.statusbar.setObjectName(u"statusbar")
        ManufacturersWindow.setStatusBar(self.statusbar)
        QWidget.setTabOrder(self.le_makername, self.cb_country)
        QWidget.setTabOrder(self.cb_country, self.le_logopath)
        QWidget.setTabOrder(self.le_logopath, self.le_website)
        QWidget.setTabOrder(self.le_website, self.le_information)
        QWidget.setTabOrder(self.le_information, self.le_toporder)
        QWidget.setTabOrder(self.le_toporder, self.le_datecreated)
        QWidget.setTabOrder(self.le_datecreated, self.le_datechanged)
        QWidget.setTabOrder(self.le_datechanged, self.pb_first)
        QWidget.setTabOrder(self.pb_first, self.pb_previous)
        QWidget.setTabOrder(self.pb_previous, self.pb_next)
        QWidget.setTabOrder(self.pb_next, self.pb_last)
        QWidget.setTabOrder(self.pb_last, self.pb_new)
        QWidget.setTabOrder(self.pb_new, self.pb_save)
        QWidget.setTabOrder(self.pb_save, self.le_id)
        QWidget.setTabOrder(self.le_id, self.le_countryid)

        self.retranslateUi(ManufacturersWindow)

        QMetaObject.connectSlotsByName(ManufacturersWindow)
    # setupUi

    def retranslateUi(self, ManufacturersWindow):
        ManufacturersWindow.setWindowTitle(QCoreApplication.translate("ManufacturersWindow", u"MainWindow", None))
        self.action_Quit.setText(QCoreApplication.translate("ManufacturersWindow", u"&Quit", None))
        self.action_Manufacturer.setText(QCoreApplication.translate("ManufacturersWindow", u"&Manufacturers", None))
        self.actionM_ounts.setText(QCoreApplication.translate("ManufacturersWindow", u"M&ounts", None))
        self.actionNo_help_available.setText(QCoreApplication.translate("ManufacturersWindow", u"No help available", None))
#if QT_CONFIG(tooltip)
        self.pb_first.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Goto first record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_first.setText(QCoreApplication.translate("ManufacturersWindow", u"  First", None))
#if QT_CONFIG(tooltip)
        self.pb_previous.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Goto previous record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_previous.setText(QCoreApplication.translate("ManufacturersWindow", u"  Previous", None))
#if QT_CONFIG(tooltip)
        self.pb_next.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Goto next record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_next.setText(QCoreApplication.translate("ManufacturersWindow", u"  Next  ", None))
#if QT_CONFIG(tooltip)
        self.pb_last.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Goto last record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_last.setText(QCoreApplication.translate("ManufacturersWindow", u"  Last", None))
#if QT_CONFIG(tooltip)
        self.pb_new.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Add new manufacturer", None))
#endif // QT_CONFIG(tooltip)
        self.pb_new.setText(QCoreApplication.translate("ManufacturersWindow", u"Add", None))
#if QT_CONFIG(tooltip)
        self.pb_save.setToolTip(QCoreApplication.translate("ManufacturersWindow", u"Save current record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_save.setText(QCoreApplication.translate("ManufacturersWindow", u"Save", None))
        self.label_5.setText(QCoreApplication.translate("ManufacturersWindow", u"Date changed", None))
        self.label_4.setText(QCoreApplication.translate("ManufacturersWindow", u"Web site", None))
        self.label_7.setText(QCoreApplication.translate("ManufacturersWindow", u"Order in list", None))
        self.label_2.setText(QCoreApplication.translate("ManufacturersWindow", u"Country", None))
        self.label_10.setText(QCoreApplication.translate("ManufacturersWindow", u"Additional Information", None))
        self.label_8.setText(QCoreApplication.translate("ManufacturersWindow", u"Manufacturer", None))
        self.label_6.setText(QCoreApplication.translate("ManufacturersWindow", u"Date created", None))
        self.label.setText(QCoreApplication.translate("ManufacturersWindow", u"Name of manufacturer", None))
        self.label_9.setText("")
        self.label_3.setText(QCoreApplication.translate("ManufacturersWindow", u"URL to logo", None))
        self.label_11.setText("")
    # retranslateUi

