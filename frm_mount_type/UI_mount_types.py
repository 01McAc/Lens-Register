# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'UI_mount_types.ui'
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
from PySide6.QtWidgets import (QApplication, QFrame, QGridLayout, QHBoxLayout,
    QHeaderView, QLabel, QLineEdit, QMainWindow,
    QMenuBar, QPlainTextEdit, QPushButton, QSizePolicy,
    QSpacerItem, QStatusBar, QTableView, QVBoxLayout,
    QWidget)

class Ui_MountTypesWindow(object):
    def setupUi(self, MountTypesWindow):
        if not MountTypesWindow.objectName():
            MountTypesWindow.setObjectName(u"MountTypesWindow")
        MountTypesWindow.resize(2217, 1271)
        self.action_Quit = QAction(MountTypesWindow)
        self.action_Quit.setObjectName(u"action_Quit")
        self.action_Manufacturer = QAction(MountTypesWindow)
        self.action_Manufacturer.setObjectName(u"action_Manufacturer")
        self.actionM_ounts = QAction(MountTypesWindow)
        self.actionM_ounts.setObjectName(u"actionM_ounts")
        self.actionNo_help_available = QAction(MountTypesWindow)
        self.actionNo_help_available.setObjectName(u"actionNo_help_available")
        self.centralwidget = QWidget(MountTypesWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.gridLayout_2 = QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.frame_quickselect = QFrame(self.centralwidget)
        self.frame_quickselect.setObjectName(u"frame_quickselect")
        self.frame_quickselect.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_quickselect.setFrameShadow(QFrame.Shadow.Raised)
        self.verticalLayout = QVBoxLayout(self.frame_quickselect)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.tbl_quickview = QTableView(self.frame_quickselect)
        self.tbl_quickview.setObjectName(u"tbl_quickview")
        self.tbl_quickview.setMinimumSize(QSize(0, 0))
        self.tbl_quickview.setBaseSize(QSize(460, 0))
        self.tbl_quickview.setFrameShadow(QFrame.Shadow.Plain)
        self.tbl_quickview.setSortingEnabled(True)

        self.verticalLayout.addWidget(self.tbl_quickview)


        self.gridLayout_2.addWidget(self.frame_quickselect, 1, 1, 1, 1)

        self.label_11 = QLabel(self.centralwidget)
        self.label_11.setObjectName(u"label_11")

        self.gridLayout_2.addWidget(self.label_11, 2, 0, 1, 1)

        self.frame_2 = QFrame(self.centralwidget)
        self.frame_2.setObjectName(u"frame_2")
        self.frame_2.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_2.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_2 = QHBoxLayout(self.frame_2)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.pb_new = QPushButton(self.frame_2)
        self.pb_new.setObjectName(u"pb_new")
        icon = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.ListAdd))
        self.pb_new.setIcon(icon)
        self.pb_new.setIconSize(QSize(32, 32))

        self.horizontalLayout_2.addWidget(self.pb_new)

        self.pb_save = QPushButton(self.frame_2)
        self.pb_save.setObjectName(u"pb_save")
        icon1 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DocumentSave))
        self.pb_save.setIcon(icon1)
        self.pb_save.setIconSize(QSize(32, 32))

        self.horizontalLayout_2.addWidget(self.pb_save)


        self.gridLayout_2.addWidget(self.frame_2, 0, 0, 1, 1)

        self.frame = QFrame(self.centralwidget)
        self.frame.setObjectName(u"frame")
        self.frame.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout = QGridLayout(self.frame)
        self.gridLayout.setObjectName(u"gridLayout")
        self.label = QLabel(self.frame)
        self.label.setObjectName(u"label")
        self.label.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label, 3, 0, 1, 1)

        self.label_3 = QLabel(self.frame)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_3, 6, 0, 1, 1)

        self.label_6 = QLabel(self.frame)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_6, 11, 5, 1, 1)

        self.le_datechanged = QLineEdit(self.frame)
        self.le_datechanged.setObjectName(u"le_datechanged")
        sizePolicy = QSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Fixed)
        sizePolicy.setHorizontalStretch(10)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.le_datechanged.sizePolicy().hasHeightForWidth())
        self.le_datechanged.setSizePolicy(sizePolicy)
        self.le_datechanged.setMinimumSize(QSize(260, 0))

        self.gridLayout.addWidget(self.le_datechanged, 11, 9, 1, 1)

        self.le_id = QLineEdit(self.frame)
        self.le_id.setObjectName(u"le_id")

        self.gridLayout.addWidget(self.le_id, 4, 9, 1, 1)

        self.le_frame_size = QLineEdit(self.frame)
        self.le_frame_size.setObjectName(u"le_frame_size")

        self.gridLayout.addWidget(self.le_frame_size, 4, 5, 1, 1)

        self.label_5 = QLabel(self.frame)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_5.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout.addWidget(self.label_5, 11, 8, 1, 1)

        self.label_12 = QLabel(self.frame)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_12, 4, 4, 1, 1)

        self.label_9 = QLabel(self.frame)
        self.label_9.setObjectName(u"label_9")

        self.gridLayout.addWidget(self.label_9, 2, 0, 1, 1)

        self.le_information = QPlainTextEdit(self.frame)
        self.le_information.setObjectName(u"le_information")

        self.gridLayout.addWidget(self.le_information, 9, 3, 1, 7)

        self.le_throat_or_thread_diameter = QLineEdit(self.frame)
        self.le_throat_or_thread_diameter.setObjectName(u"le_throat_or_thread_diameter")

        self.gridLayout.addWidget(self.le_throat_or_thread_diameter, 6, 3, 1, 7)

        self.le_flange_focal_distance = QLineEdit(self.frame)
        self.le_flange_focal_distance.setObjectName(u"le_flange_focal_distance")

        self.gridLayout.addWidget(self.le_flange_focal_distance, 4, 3, 1, 1)

        self.le_mount_name = QLineEdit(self.frame)
        self.le_mount_name.setObjectName(u"le_mount_name")

        self.gridLayout.addWidget(self.le_mount_name, 3, 3, 1, 7)

        self.label_13 = QLabel(self.frame)
        self.label_13.setObjectName(u"label_13")
        self.label_13.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_13, 7, 4, 1, 1)

        self.le_mount_thread_pitch = QLineEdit(self.frame)
        self.le_mount_thread_pitch.setObjectName(u"le_mount_thread_pitch")

        self.gridLayout.addWidget(self.le_mount_thread_pitch, 7, 3, 1, 1)

        self.label_2 = QLabel(self.frame)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_2, 4, 0, 1, 1)

        self.label_10 = QLabel(self.frame)
        self.label_10.setObjectName(u"label_10")
        self.label_10.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_10.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignTop)

        self.gridLayout.addWidget(self.label_10, 9, 0, 1, 1)

        self.label_7 = QLabel(self.frame)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_7.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout.addWidget(self.label_7, 11, 0, 1, 1)

        self.le_datecreated = QLineEdit(self.frame)
        self.le_datecreated.setObjectName(u"le_datecreated")
        self.le_datecreated.setMinimumSize(QSize(260, 0))

        self.gridLayout.addWidget(self.le_datecreated, 11, 6, 1, 2)

        self.le_toporder = QLineEdit(self.frame)
        self.le_toporder.setObjectName(u"le_toporder")
        self.le_toporder.setMaximumSize(QSize(100, 16777215))

        self.gridLayout.addWidget(self.le_toporder, 11, 3, 1, 1)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer, 11, 4, 1, 1)

        self.label_4 = QLabel(self.frame)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_4, 7, 0, 1, 1)

        self.label_15 = QLabel(self.frame)
        self.label_15.setObjectName(u"label_15")
        self.label_15.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_15.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignTop)

        self.gridLayout.addWidget(self.label_15, 8, 0, 1, 1)

        self.le_camera_lines = QPlainTextEdit(self.frame)
        self.le_camera_lines.setObjectName(u"le_camera_lines")
        self.le_camera_lines.setMaximumSize(QSize(16777215, 150))
        self.le_camera_lines.setBaseSize(QSize(0, 0))

        self.gridLayout.addWidget(self.le_camera_lines, 8, 3, 1, 7)

        self.label_8 = QLabel(self.frame)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setMaximumSize(QSize(16777215, 16777215))
        font = QFont()
        font.setPointSize(38)
        font.setBold(True)
        self.label_8.setFont(font)
        self.label_8.setStyleSheet(u"color: rgb(255, 185, 88); ")

        self.gridLayout.addWidget(self.label_8, 1, 0, 1, 3)

        self.le_primary_use = QLineEdit(self.frame)
        self.le_primary_use.setObjectName(u"le_primary_use")

        self.gridLayout.addWidget(self.le_primary_use, 7, 8, 1, 2)

        self.label_14 = QLabel(self.frame)
        self.label_14.setObjectName(u"label_14")
        self.label_14.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_14, 7, 7, 1, 1)

        self.le_mount_type = QLineEdit(self.frame)
        self.le_mount_type.setObjectName(u"le_mount_type")

        self.gridLayout.addWidget(self.le_mount_type, 7, 5, 1, 2)


        self.gridLayout_2.addWidget(self.frame, 1, 0, 1, 1)

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
        icon2 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipBackward))
        self.pb_first.setIcon(icon2)
        self.pb_first.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_first)

        self.pb_previous = QPushButton(self.frame_navigation)
        self.pb_previous.setObjectName(u"pb_previous")
        icon3 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoPrevious))
        self.pb_previous.setIcon(icon3)
        self.pb_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_previous)

        self.pb_next = QPushButton(self.frame_navigation)
        self.pb_next.setObjectName(u"pb_next")
        icon4 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoNext))
        self.pb_next.setIcon(icon4)
        self.pb_next.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_next)

        self.pb_last = QPushButton(self.frame_navigation)
        self.pb_last.setObjectName(u"pb_last")
        icon5 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipForward))
        self.pb_last.setIcon(icon5)
        self.pb_last.setIconSize(QSize(32, 32))

        self.horizontalLayout.addWidget(self.pb_last)


        self.gridLayout_2.addWidget(self.frame_navigation, 3, 0, 1, 1)

        MountTypesWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MountTypesWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 2217, 38))
        MountTypesWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MountTypesWindow)
        self.statusbar.setObjectName(u"statusbar")
        MountTypesWindow.setStatusBar(self.statusbar)
        QWidget.setTabOrder(self.le_mount_name, self.le_throat_or_thread_diameter)
        QWidget.setTabOrder(self.le_throat_or_thread_diameter, self.le_mount_thread_pitch)
        QWidget.setTabOrder(self.le_mount_thread_pitch, self.le_information)
        QWidget.setTabOrder(self.le_information, self.le_toporder)
        QWidget.setTabOrder(self.le_toporder, self.le_datecreated)
        QWidget.setTabOrder(self.le_datecreated, self.le_datechanged)
        QWidget.setTabOrder(self.le_datechanged, self.pb_first)
        QWidget.setTabOrder(self.pb_first, self.pb_previous)
        QWidget.setTabOrder(self.pb_previous, self.pb_next)
        QWidget.setTabOrder(self.pb_next, self.pb_last)
        QWidget.setTabOrder(self.pb_last, self.pb_new)
        QWidget.setTabOrder(self.pb_new, self.pb_save)

        self.retranslateUi(MountTypesWindow)

        QMetaObject.connectSlotsByName(MountTypesWindow)
    # setupUi

    def retranslateUi(self, MountTypesWindow):
        MountTypesWindow.setWindowTitle(QCoreApplication.translate("MountTypesWindow", u"MainWindow", None))
        self.action_Quit.setText(QCoreApplication.translate("MountTypesWindow", u"&Quit", None))
        self.action_Manufacturer.setText(QCoreApplication.translate("MountTypesWindow", u"&Manufacturers", None))
        self.actionM_ounts.setText(QCoreApplication.translate("MountTypesWindow", u"M&ounts", None))
        self.actionNo_help_available.setText(QCoreApplication.translate("MountTypesWindow", u"No help available", None))
        self.label_11.setText("")
#if QT_CONFIG(tooltip)
        self.pb_new.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Add new manufacturer", None))
#endif // QT_CONFIG(tooltip)
        self.pb_new.setText(QCoreApplication.translate("MountTypesWindow", u"Add", None))
#if QT_CONFIG(tooltip)
        self.pb_save.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Save current record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_save.setText(QCoreApplication.translate("MountTypesWindow", u"Save", None))
        self.label.setText(QCoreApplication.translate("MountTypesWindow", u"Mount name", None))
        self.label_3.setText(QCoreApplication.translate("MountTypesWindow", u"Throat or thread diameter", None))
        self.label_6.setText(QCoreApplication.translate("MountTypesWindow", u"Date created", None))
        self.label_5.setText(QCoreApplication.translate("MountTypesWindow", u"Date changed", None))
        self.label_12.setText(QCoreApplication.translate("MountTypesWindow", u"Frame size", None))
        self.label_9.setText("")
        self.label_13.setText(QCoreApplication.translate("MountTypesWindow", u"Mount_type", None))
        self.label_2.setText(QCoreApplication.translate("MountTypesWindow", u"Flange focal distance", None))
        self.label_10.setText(QCoreApplication.translate("MountTypesWindow", u"Additional Information", None))
        self.label_7.setText(QCoreApplication.translate("MountTypesWindow", u"Order in list", None))
        self.label_4.setText(QCoreApplication.translate("MountTypesWindow", u"Mount thread pitch", None))
        self.label_15.setText(QCoreApplication.translate("MountTypesWindow", u"Camera lines", None))
        self.label_8.setText(QCoreApplication.translate("MountTypesWindow", u"Mount Types", None))
        self.label_14.setText(QCoreApplication.translate("MountTypesWindow", u"Primary use", None))
#if QT_CONFIG(tooltip)
        self.pb_first.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Goto first record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_first.setText(QCoreApplication.translate("MountTypesWindow", u"  First", None))
#if QT_CONFIG(tooltip)
        self.pb_previous.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Goto previous record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_previous.setText(QCoreApplication.translate("MountTypesWindow", u"  Previous", None))
#if QT_CONFIG(tooltip)
        self.pb_next.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Goto next record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_next.setText(QCoreApplication.translate("MountTypesWindow", u"  Next  ", None))
#if QT_CONFIG(tooltip)
        self.pb_last.setToolTip(QCoreApplication.translate("MountTypesWindow", u"Goto last record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_last.setText(QCoreApplication.translate("MountTypesWindow", u"  Last", None))
    # retranslateUi

