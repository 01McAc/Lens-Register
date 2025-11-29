# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'UI_lenses.ui'
##
## Created by: Qt User Interface Compiler version 6.10.1
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
from PySide6.QtWidgets import (QApplication, QCheckBox, QComboBox, QFrame,
    QGridLayout, QHBoxLayout, QHeaderView, QLabel,
    QLineEdit, QMainWindow, QMenu, QMenuBar,
    QPushButton, QSizePolicy, QSpacerItem, QStatusBar,
    QTableView, QWidget)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(2152, 1059)
        icon = QIcon()
        icon.addFile(u"LensDB.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        MainWindow.setWindowIcon(icon)
        self.action_Quit = QAction(MainWindow)
        self.action_Quit.setObjectName(u"action_Quit")
        self.action_About = QAction(MainWindow)
        self.action_About.setObjectName(u"action_About")
        self.action_Quit_2 = QAction(MainWindow)
        self.action_Quit_2.setObjectName(u"action_Quit_2")
        self.action_Manufacturers = QAction(MainWindow)
        self.action_Manufacturers.setObjectName(u"action_Manufacturers")
        self.actionM_ounts = QAction(MainWindow)
        self.actionM_ounts.setObjectName(u"actionM_ounts")
        self.actionNo_help_available = QAction(MainWindow)
        self.actionNo_help_available.setObjectName(u"actionNo_help_available")
        self.action_Quit_3 = QAction(MainWindow)
        self.action_Quit_3.setObjectName(u"action_Quit_3")
        self.action_Manufacturers_2 = QAction(MainWindow)
        self.action_Manufacturers_2.setObjectName(u"action_Manufacturers_2")
        self.actionM_ounts_2 = QAction(MainWindow)
        self.actionM_ounts_2.setObjectName(u"actionM_ounts_2")
        self.actionNo_help_available_2 = QAction(MainWindow)
        self.actionNo_help_available_2.setObjectName(u"actionNo_help_available_2")
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.gridLayout_2 = QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.frame1 = QFrame(self.centralwidget)
        self.frame1.setObjectName(u"frame1")
        self.frame1.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame1.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout = QGridLayout(self.frame1)
        self.gridLayout.setObjectName(u"gridLayout")
        self.tbl_all_lenses = QTableView(self.frame1)
        self.tbl_all_lenses.setObjectName(u"tbl_all_lenses")
        self.tbl_all_lenses.setAlternatingRowColors(True)

        self.gridLayout.addWidget(self.tbl_all_lenses, 3, 0, 1, 1)

        self.frame_chkbox_reset = QFrame(self.frame1)
        self.frame_chkbox_reset.setObjectName(u"frame_chkbox_reset")
        self.frame_chkbox_reset.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_chkbox_reset.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout = QHBoxLayout(self.frame_chkbox_reset)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.checkBox_mylenses = QCheckBox(self.frame_chkbox_reset)
        self.checkBox_mylenses.setObjectName(u"checkBox_mylenses")

        self.horizontalLayout.addWidget(self.checkBox_mylenses)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_2)

        self.pb_reset_sort = QPushButton(self.frame_chkbox_reset)
        self.pb_reset_sort.setObjectName(u"pb_reset_sort")

        self.horizontalLayout.addWidget(self.pb_reset_sort)


        self.gridLayout.addWidget(self.frame_chkbox_reset, 0, 0, 1, 1)


        self.gridLayout_2.addWidget(self.frame1, 5, 0, 1, 1)

        self.frame_2 = QFrame(self.centralwidget)
        self.frame_2.setObjectName(u"frame_2")
        self.frame_2.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_2.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_2 = QHBoxLayout(self.frame_2)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.label = QLabel(self.frame_2)
        self.label.setObjectName(u"label")
        font = QFont()
        font.setPointSize(38)
        font.setBold(True)
        self.label.setFont(font)
        self.label.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_2.addWidget(self.label)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer)

        self.label_2 = QLabel(self.frame_2)
        self.label_2.setObjectName(u"label_2")

        self.horizontalLayout_2.addWidget(self.label_2)

        self.cmb_select = QComboBox(self.frame_2)
        self.cmb_select.setObjectName(u"cmb_select")
        self.cmb_select.setMinimumSize(QSize(200, 0))

        self.horizontalLayout_2.addWidget(self.cmb_select)


        self.gridLayout_2.addWidget(self.frame_2, 4, 0, 1, 1)

        self.frame_3 = QFrame(self.centralwidget)
        self.frame_3.setObjectName(u"frame_3")
        self.frame_3.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_3.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_3 = QHBoxLayout(self.frame_3)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.search_line_edit = QLineEdit(self.frame_3)
        self.search_line_edit.setObjectName(u"search_line_edit")

        self.horizontalLayout_3.addWidget(self.search_line_edit)

        self.pb_del_search_line_edit = QPushButton(self.frame_3)
        self.pb_del_search_line_edit.setObjectName(u"pb_del_search_line_edit")

        self.horizontalLayout_3.addWidget(self.pb_del_search_line_edit)


        self.gridLayout_2.addWidget(self.frame_3, 6, 0, 1, 1)

        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 2152, 45))
        self.menu_File_2 = QMenu(self.menubar)
        self.menu_File_2.setObjectName(u"menu_File_2")
        self.menu_Maintenance_2 = QMenu(self.menubar)
        self.menu_Maintenance_2.setObjectName(u"menu_Maintenance_2")
        self.menu_Help_2 = QMenu(self.menubar)
        self.menu_Help_2.setObjectName(u"menu_Help_2")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.menubar.addAction(self.menu_File_2.menuAction())
        self.menubar.addAction(self.menu_Maintenance_2.menuAction())
        self.menubar.addAction(self.menu_Help_2.menuAction())
        self.menu_File_2.addAction(self.action_Quit_3)
        self.menu_Maintenance_2.addAction(self.action_Manufacturers_2)
        self.menu_Maintenance_2.addAction(self.actionM_ounts_2)
        self.menu_Help_2.addAction(self.actionNo_help_available_2)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
        self.action_Quit.setText(QCoreApplication.translate("MainWindow", u"&Quit", None))
        self.action_About.setText(QCoreApplication.translate("MainWindow", u"&About", None))
        self.action_Quit_2.setText(QCoreApplication.translate("MainWindow", u"&Quit", None))
        self.action_Manufacturers.setText(QCoreApplication.translate("MainWindow", u"&Manufacturers        ", None))
        self.actionM_ounts.setText(QCoreApplication.translate("MainWindow", u"M&ounts        ", None))
        self.actionNo_help_available.setText(QCoreApplication.translate("MainWindow", u"No help available", None))
        self.action_Quit_3.setText(QCoreApplication.translate("MainWindow", u"&Quit        ", None))
        self.action_Manufacturers_2.setText(QCoreApplication.translate("MainWindow", u"&Manufacturers                        ", None))
        self.actionM_ounts_2.setText(QCoreApplication.translate("MainWindow", u"M&ounts                        ", None))
        self.actionNo_help_available_2.setText(QCoreApplication.translate("MainWindow", u"No help available                        ", None))
        self.checkBox_mylenses.setText(QCoreApplication.translate("MainWindow", u"Show only my lenses (colored)", None))
#if QT_CONFIG(tooltip)
        self.pb_reset_sort.setToolTip(QCoreApplication.translate("MainWindow", u"Reset sorting to default", None))
#endif // QT_CONFIG(tooltip)
        self.pb_reset_sort.setText(QCoreApplication.translate("MainWindow", u"Reset", None))
        self.label.setText(QCoreApplication.translate("MainWindow", u"Lenses", None))
        self.label_2.setText(QCoreApplication.translate("MainWindow", u"Stats", None))
        self.cmb_select.setPlaceholderText(QCoreApplication.translate("MainWindow", u"Please select ...", None))
#if QT_CONFIG(tooltip)
        self.search_line_edit.setToolTip(QCoreApplication.translate("MainWindow", u"Search as you type", None))
#endif // QT_CONFIG(tooltip)
        self.search_line_edit.setPlaceholderText(QCoreApplication.translate("MainWindow", u"Instant search - enter what you are looking for", None))
#if QT_CONFIG(tooltip)
        self.pb_del_search_line_edit.setToolTip(QCoreApplication.translate("MainWindow", u"Clear instant search", None))
#endif // QT_CONFIG(tooltip)
        self.pb_del_search_line_edit.setText(QCoreApplication.translate("MainWindow", u"X", None))
        self.menu_File_2.setTitle(QCoreApplication.translate("MainWindow", u"&File  ", None))
        self.menu_Maintenance_2.setTitle(QCoreApplication.translate("MainWindow", u"&Maintenance  ", None))
        self.menu_Help_2.setTitle(QCoreApplication.translate("MainWindow", u"&Help  ", None))
    # retranslateUi

