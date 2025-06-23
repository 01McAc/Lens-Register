# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'UI_details.ui'
##
## Created by: Qt User Interface Compiler version 6.10.0
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QBrush, QColor, QConicalGradient, QCursor,
    QFont, QFontDatabase, QGradient, QIcon,
    QImage, QKeySequence, QLinearGradient, QPainter,
    QPalette, QPixmap, QRadialGradient, QTransform)
from PySide6.QtWidgets import (QApplication, QCheckBox, QComboBox, QFormLayout,
    QFrame, QGridLayout, QHBoxLayout, QHeaderView,
    QLabel, QLineEdit, QMainWindow, QMenuBar,
    QPlainTextEdit, QPushButton, QSizePolicy, QSpacerItem,
    QStatusBar, QTabWidget, QTableView, QVBoxLayout,
    QWidget)

class Ui_MainWindowDetails(object):
    def setupUi(self, MainWindowDetails):
        if not MainWindowDetails.objectName():
            MainWindowDetails.setObjectName(u"MainWindowDetails")
        MainWindowDetails.resize(2915, 1711)
        MainWindowDetails.setToolButtonStyle(Qt.ToolButtonStyle.ToolButtonTextOnly)
        MainWindowDetails.setDockNestingEnabled(True)
        self.centralwidget = QWidget(MainWindowDetails)
        self.centralwidget.setObjectName(u"centralwidget")
        self.verticalLayout_2 = QVBoxLayout(self.centralwidget)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.frame_10 = QFrame(self.centralwidget)
        self.frame_10.setObjectName(u"frame_10")
        self.frame_10.setStyleSheet(u"background-color: rgb(77, 77, 77);")
        self.frame_10.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_10.setFrameShadow(QFrame.Shadow.Sunken)
        self.frame_10.setLineWidth(1)
        self.frame_10.setMidLineWidth(1)
        self.gridLayout_2 = QGridLayout(self.frame_10)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.pb_new_lens = QPushButton(self.frame_10)
        self.pb_new_lens.setObjectName(u"pb_new_lens")
        icon = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.ContactNew))
        self.pb_new_lens.setIcon(icon)
        self.pb_new_lens.setIconSize(QSize(32, 32))

        self.gridLayout_2.addWidget(self.pb_new_lens, 0, 0, 1, 1)

        self.pb_save = QPushButton(self.frame_10)
        self.pb_save.setObjectName(u"pb_save")
        icon1 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DocumentSave))
        self.pb_save.setIcon(icon1)
        self.pb_save.setIconSize(QSize(32, 32))

        self.gridLayout_2.addWidget(self.pb_save, 0, 1, 1, 1)


        self.verticalLayout_2.addWidget(self.frame_10)

        self.frame_lensheader = QFrame(self.centralwidget)
        self.frame_lensheader.setObjectName(u"frame_lensheader")
        self.frame_lensheader.setAutoFillBackground(False)
        self.frame_lensheader.setStyleSheet(u"")
        self.frame_lensheader.setFrameShape(QFrame.Shape.Box)
        self.frame_lensheader.setFrameShadow(QFrame.Shadow.Raised)
        self.frame_lensheader.setLineWidth(1)
        self.frame_lensheader.setMidLineWidth(1)
        self.horizontalLayout = QHBoxLayout(self.frame_lensheader)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.frame_2 = QFrame(self.frame_lensheader)
        self.frame_2.setObjectName(u"frame_2")
        self.frame_2.setStyleSheet(u"")
        self.frame_2.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_2.setFrameShadow(QFrame.Shadow.Raised)
        self.formLayout_2 = QFormLayout(self.frame_2)
        self.formLayout_2.setObjectName(u"formLayout_2")
        self.label_2 = QLabel(self.frame_2)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setMinimumSize(QSize(0, 40))
        self.label_2.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout_2.setWidget(1, QFormLayout.ItemRole.LabelRole, self.label_2)

        self.le_lenslabel = QLineEdit(self.frame_2)
        self.le_lenslabel.setObjectName(u"le_lenslabel")
        self.le_lenslabel.setMinimumSize(QSize(0, 40))

        self.formLayout_2.setWidget(1, QFormLayout.ItemRole.FieldRole, self.le_lenslabel)

        self.label_3 = QLabel(self.frame_2)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setMinimumSize(QSize(0, 40))
        self.label_3.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout_2.setWidget(2, QFormLayout.ItemRole.LabelRole, self.label_3)

        self.le_known_as = QLineEdit(self.frame_2)
        self.le_known_as.setObjectName(u"le_known_as")
        self.le_known_as.setMinimumSize(QSize(0, 40))

        self.formLayout_2.setWidget(2, QFormLayout.ItemRole.FieldRole, self.le_known_as)

        self.label_4 = QLabel(self.frame_2)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout_2.setWidget(3, QFormLayout.ItemRole.LabelRole, self.label_4)

        self.le_order_no = QLineEdit(self.frame_2)
        self.le_order_no.setObjectName(u"le_order_no")

        self.formLayout_2.setWidget(3, QFormLayout.ItemRole.FieldRole, self.le_order_no)

        self.label_showID = QLabel(self.frame_2)
        self.label_showID.setObjectName(u"label_showID")
        self.label_showID.setStyleSheet(u"background-color: rgb(30, 85, 0);")

        self.formLayout_2.setWidget(4, QFormLayout.ItemRole.LabelRole, self.label_showID)

        self.frame = QFrame(self.frame_2)
        self.frame.setObjectName(u"frame")
        self.frame.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame.setFrameShadow(QFrame.Shadow.Raised)
        self.le_id = QLineEdit(self.frame)
        self.le_id.setObjectName(u"le_id")
        self.le_id.setGeometry(QRect(20, 0, 61, 42))
        self.xyle_r_lens_spec = QLineEdit(self.frame)
        self.xyle_r_lens_spec.setObjectName(u"xyle_r_lens_spec")
        self.xyle_r_lens_spec.setGeometry(QRect(370, 10, 113, 42))
        self.xyle_row_colour = QLineEdit(self.frame)
        self.xyle_row_colour.setObjectName(u"xyle_row_colour")
        self.xyle_row_colour.setGeometry(QRect(510, 0, 113, 42))
        self.xyle_r_lens_spec_id = QLineEdit(self.frame)
        self.xyle_r_lens_spec_id.setObjectName(u"xyle_r_lens_spec_id")
        self.xyle_r_lens_spec_id.setGeometry(QRect(650, 10, 113, 42))
        self.le_makerid = QLineEdit(self.frame)
        self.le_makerid.setObjectName(u"le_makerid")
        self.le_makerid.setGeometry(QRect(770, 10, 121, 42))
        self.le_mountid = QLineEdit(self.frame)
        self.le_mountid.setObjectName(u"le_mountid")
        self.le_mountid.setGeometry(QRect(100, 0, 251, 42))
        self.xyle_r_lens_spec.raise_()
        self.xyle_row_colour.raise_()
        self.xyle_r_lens_spec_id.raise_()
        self.le_id.raise_()
        self.le_makerid.raise_()
        self.le_mountid.raise_()

        self.formLayout_2.setWidget(4, QFormLayout.ItemRole.FieldRole, self.frame)

        self.label_13 = QLabel(self.frame_2)
        self.label_13.setObjectName(u"label_13")
        font = QFont()
        font.setFamilies([u"Droid Sans Tamil"])
        font.setPointSize(32)
        font.setWeight(QFont.DemiBold)
        self.label_13.setFont(font)
        self.label_13.setStyleSheet(u"color: rgb(255, 185, 88);")

        self.formLayout_2.setWidget(0, QFormLayout.ItemRole.SpanningRole, self.label_13)


        self.horizontalLayout.addWidget(self.frame_2)

        self.frame_3 = QFrame(self.frame_lensheader)
        self.frame_3.setObjectName(u"frame_3")
        self.frame_3.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_3.setFrameShadow(QFrame.Shadow.Raised)
        self.verticalLayout = QVBoxLayout(self.frame_3)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.le_information = QPlainTextEdit(self.frame_3)
        self.le_information.setObjectName(u"le_information")

        self.verticalLayout.addWidget(self.le_information)

        self.frame_4 = QFrame(self.frame_3)
        self.frame_4.setObjectName(u"frame_4")
        self.frame_4.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_4.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_5 = QHBoxLayout(self.frame_4)
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.lb_date_created = QLabel(self.frame_4)
        self.lb_date_created.setObjectName(u"lb_date_created")

        self.horizontalLayout_5.addWidget(self.lb_date_created)

        self.le_datecreated = QLineEdit(self.frame_4)
        self.le_datecreated.setObjectName(u"le_datecreated")
        self.le_datecreated.setReadOnly(True)

        self.horizontalLayout_5.addWidget(self.le_datecreated)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer)

        self.lb_date_changed = QLabel(self.frame_4)
        self.lb_date_changed.setObjectName(u"lb_date_changed")

        self.horizontalLayout_5.addWidget(self.lb_date_changed)

        self.le_datechanged = QLineEdit(self.frame_4)
        self.le_datechanged.setObjectName(u"le_datechanged")
        self.le_datechanged.setReadOnly(True)

        self.horizontalLayout_5.addWidget(self.le_datechanged)


        self.verticalLayout.addWidget(self.frame_4)


        self.horizontalLayout.addWidget(self.frame_3)


        self.verticalLayout_2.addWidget(self.frame_lensheader)

        self.frame_header_tabs = QFrame(self.centralwidget)
        self.frame_header_tabs.setObjectName(u"frame_header_tabs")
        self.frame_header_tabs.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_header_tabs.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_4 = QHBoxLayout(self.frame_header_tabs)
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.frame_tabs = QFrame(self.frame_header_tabs)
        self.frame_tabs.setObjectName(u"frame_tabs")
        self.frame_tabs.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_tabs.setFrameShadow(QFrame.Shadow.Raised)
        self.verticalLayout_7 = QVBoxLayout(self.frame_tabs)
        self.verticalLayout_7.setObjectName(u"verticalLayout_7")
        self.tab_all_details = QTabWidget(self.frame_tabs)
        self.tab_all_details.setObjectName(u"tab_all_details")
        font1 = QFont()
        font1.setUnderline(False)
        self.tab_all_details.setFont(font1)
        self.tab_all_details.setLayoutDirection(Qt.LayoutDirection.LeftToRight)
        self.tab_all_details.setAutoFillBackground(True)
        self.tab_all_details.setStyleSheet(u"")
        self.tab_all_details.setTabPosition(QTabWidget.TabPosition.West)
        self.tab_all_details.setTabShape(QTabWidget.TabShape.Rounded)
        self.tab_all_details.setIconSize(QSize(32, 32))
        self.tab_all_details.setDocumentMode(False)
        self.tab_all_details.setMovable(True)
        self.tb_overview = QWidget()
        self.tb_overview.setObjectName(u"tb_overview")
        self.tb_overview.setMaximumSize(QSize(1783, 1019))
        self.gridLayout_12 = QGridLayout(self.tb_overview)
        self.gridLayout_12.setObjectName(u"gridLayout_12")
        self.frame_8 = QFrame(self.tb_overview)
        self.frame_8.setObjectName(u"frame_8")
        self.frame_8.setFrameShape(QFrame.Shape.Box)
        self.frame_8.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_9 = QGridLayout(self.frame_8)
        self.gridLayout_9.setObjectName(u"gridLayout_9")
        self.frame_26 = QFrame(self.frame_8)
        self.frame_26.setObjectName(u"frame_26")
        self.frame_26.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_26.setFrameShadow(QFrame.Shadow.Raised)
        self.label_33 = QLabel(self.frame_26)
        self.label_33.setObjectName(u"label_33")
        self.label_33.setGeometry(QRect(10, 10, 115, 51))
        font2 = QFont()
        font2.setPointSize(28)
        font2.setBold(True)
        font2.setUnderline(False)
        self.label_33.setFont(font2)
        self.label_33.setStyleSheet(u"color: rgb(255, 170, 0);")
        self.label_33.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignVCenter)
        self.frame_focus = QFrame(self.frame_26)
        self.frame_focus.setObjectName(u"frame_focus")
        self.frame_focus.setGeometry(QRect(10, 81, 1741, 201))
        self.frame_focus.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_focus.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout = QGridLayout(self.frame_focus)
        self.gridLayout.setObjectName(u"gridLayout")
        self.label_18 = QLabel(self.frame_focus)
        self.label_18.setObjectName(u"label_18")
        self.label_18.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_18, 4, 0, 1, 1)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer_2, 1, 2, 1, 1)

        self.label_27 = QLabel(self.frame_focus)
        self.label_27.setObjectName(u"label_27")
        self.label_27.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_27, 1, 0, 1, 1)

        self.label_30 = QLabel(self.frame_focus)
        self.label_30.setObjectName(u"label_30")
        self.label_30.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_30, 2, 3, 1, 1)

        self.label_29 = QLabel(self.frame_focus)
        self.label_29.setObjectName(u"label_29")
        self.label_29.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_29, 2, 0, 1, 1)

        self.le_focallength = QLineEdit(self.frame_focus)
        self.le_focallength.setObjectName(u"le_focallength")

        self.gridLayout.addWidget(self.le_focallength, 1, 1, 1, 1)

        self.le_type_of_focus_ring = QLineEdit(self.frame_focus)
        self.le_type_of_focus_ring.setObjectName(u"le_type_of_focus_ring")

        self.gridLayout.addWidget(self.le_type_of_focus_ring, 3, 4, 1, 1)

        self.le_mfd = QLineEdit(self.frame_focus)
        self.le_mfd.setObjectName(u"le_mfd")

        self.gridLayout.addWidget(self.le_mfd, 2, 4, 1, 1)

        self.label_32 = QLabel(self.frame_focus)
        self.label_32.setObjectName(u"label_32")
        self.label_32.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_32, 3, 3, 1, 1)

        self.horizontalSpacer_3 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer_3, 2, 2, 1, 1)

        self.label_28 = QLabel(self.frame_focus)
        self.label_28.setObjectName(u"label_28")
        self.label_28.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_28.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout.addWidget(self.label_28, 1, 3, 1, 1)

        self.label_31 = QLabel(self.frame_focus)
        self.label_31.setObjectName(u"label_31")
        self.label_31.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout.addWidget(self.label_31, 3, 0, 1, 1)

        self.le_focallength_sort = QLineEdit(self.frame_focus)
        self.le_focallength_sort.setObjectName(u"le_focallength_sort")

        self.gridLayout.addWidget(self.le_focallength_sort, 1, 4, 1, 1)

        self.horizontalSpacer_4 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer_4, 3, 2, 1, 1)

        self.le_aperture1_kannweg = QLineEdit(self.frame_focus)
        self.le_aperture1_kannweg.setObjectName(u"le_aperture1_kannweg")

        self.gridLayout.addWidget(self.le_aperture1_kannweg, 2, 1, 1, 1)

        self.le_focusing_range = QLineEdit(self.frame_focus)
        self.le_focusing_range.setObjectName(u"le_focusing_range")

        self.gridLayout.addWidget(self.le_focusing_range, 3, 1, 1, 1)

        self.le_focus_throw = QLineEdit(self.frame_focus)
        self.le_focus_throw.setObjectName(u"le_focus_throw")

        self.gridLayout.addWidget(self.le_focus_throw, 4, 1, 1, 1)

        self.frame_overview = QFrame(self.frame_26)
        self.frame_overview.setObjectName(u"frame_overview")
        self.frame_overview.setGeometry(QRect(10, 320, 1743, 671))
        self.frame_overview.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_overview.setFrameShadow(QFrame.Shadow.Raised)
        self.formLayout = QFormLayout(self.frame_overview)
        self.formLayout.setObjectName(u"formLayout")
        self.label_82 = QLabel(self.frame_overview)
        self.label_82.setObjectName(u"label_82")
        self.label_82.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(2, QFormLayout.ItemRole.LabelRole, self.label_82)

        self.le_dimension = QLineEdit(self.frame_overview)
        self.le_dimension.setObjectName(u"le_dimension")

        self.formLayout.setWidget(2, QFormLayout.ItemRole.FieldRole, self.le_dimension)

        self.label_81 = QLabel(self.frame_overview)
        self.label_81.setObjectName(u"label_81")
        self.label_81.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(3, QFormLayout.ItemRole.LabelRole, self.label_81)

        self.le_length_to_bayonet_flange = QLineEdit(self.frame_overview)
        self.le_length_to_bayonet_flange.setObjectName(u"le_length_to_bayonet_flange")

        self.formLayout.setWidget(3, QFormLayout.ItemRole.FieldRole, self.le_length_to_bayonet_flange)

        self.label_22 = QLabel(self.frame_overview)
        self.label_22.setObjectName(u"label_22")
        self.label_22.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(4, QFormLayout.ItemRole.LabelRole, self.label_22)

        self.le_dimensions_diameter = QLineEdit(self.frame_overview)
        self.le_dimensions_diameter.setObjectName(u"le_dimensions_diameter")

        self.formLayout.setWidget(4, QFormLayout.ItemRole.FieldRole, self.le_dimensions_diameter)

        self.label_77 = QLabel(self.frame_overview)
        self.label_77.setObjectName(u"label_77")
        self.label_77.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(5, QFormLayout.ItemRole.LabelRole, self.label_77)

        self.le_diaphragm_setting_type = QLineEdit(self.frame_overview)
        self.le_diaphragm_setting_type.setObjectName(u"le_diaphragm_setting_type")

        self.formLayout.setWidget(5, QFormLayout.ItemRole.FieldRole, self.le_diaphragm_setting_type)

        self.label_80 = QLabel(self.frame_overview)
        self.label_80.setObjectName(u"label_80")
        self.label_80.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(6, QFormLayout.ItemRole.LabelRole, self.label_80)

        self.le_filter_type = QLineEdit(self.frame_overview)
        self.le_filter_type.setObjectName(u"le_filter_type")

        self.formLayout.setWidget(6, QFormLayout.ItemRole.FieldRole, self.le_filter_type)

        self.label_79 = QLabel(self.frame_overview)
        self.label_79.setObjectName(u"label_79")
        self.label_79.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(7, QFormLayout.ItemRole.LabelRole, self.label_79)

        self.le_designer = QLineEdit(self.frame_overview)
        self.le_designer.setObjectName(u"le_designer")

        self.formLayout.setWidget(7, QFormLayout.ItemRole.FieldRole, self.le_designer)

        self.label_78 = QLabel(self.frame_overview)
        self.label_78.setObjectName(u"label_78")
        self.label_78.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(8, QFormLayout.ItemRole.LabelRole, self.label_78)

        self.le_materials = QLineEdit(self.frame_overview)
        self.le_materials.setObjectName(u"le_materials")

        self.formLayout.setWidget(8, QFormLayout.ItemRole.FieldRole, self.le_materials)

        self.label_76 = QLabel(self.frame_overview)
        self.label_76.setObjectName(u"label_76")
        self.label_76.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(10, QFormLayout.ItemRole.LabelRole, self.label_76)

        self.le_largest_reproduction = QLineEdit(self.frame_overview)
        self.le_largest_reproduction.setObjectName(u"le_largest_reproduction")

        self.formLayout.setWidget(10, QFormLayout.ItemRole.FieldRole, self.le_largest_reproduction)

        self.le_weight = QLineEdit(self.frame_overview)
        self.le_weight.setObjectName(u"le_weight")

        self.formLayout.setWidget(9, QFormLayout.ItemRole.FieldRole, self.le_weight)

        self.label_26 = QLabel(self.frame_overview)
        self.label_26.setObjectName(u"label_26")
        self.label_26.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(9, QFormLayout.ItemRole.LabelRole, self.label_26)

        self.label_23 = QLabel(self.frame_overview)
        self.label_23.setObjectName(u"label_23")
        self.label_23.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.formLayout.setWidget(1, QFormLayout.ItemRole.LabelRole, self.label_23)

        self.le_compatibility = QLineEdit(self.frame_overview)
        self.le_compatibility.setObjectName(u"le_compatibility")

        self.formLayout.setWidget(1, QFormLayout.ItemRole.FieldRole, self.le_compatibility)

        self.frame_25 = QFrame(self.frame_overview)
        self.frame_25.setObjectName(u"frame_25")
        self.frame_25.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_25.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_10 = QHBoxLayout(self.frame_25)
        self.horizontalLayout_10.setObjectName(u"horizontalLayout_10")
        self.label_83 = QLabel(self.frame_25)
        self.label_83.setObjectName(u"label_83")
        self.label_83.setFont(font2)
        self.label_83.setStyleSheet(u"color: rgb(255, 170, 0);")
        self.label_83.setAlignment(Qt.AlignmentFlag.AlignLeading|Qt.AlignmentFlag.AlignLeft|Qt.AlignmentFlag.AlignVCenter)

        self.horizontalLayout_10.addWidget(self.label_83)


        self.formLayout.setWidget(0, QFormLayout.ItemRole.SpanningRole, self.frame_25)


        self.gridLayout_9.addWidget(self.frame_26, 0, 0, 1, 1)


        self.gridLayout_12.addWidget(self.frame_8, 0, 0, 1, 1)

        self.tab_all_details.addTab(self.tb_overview, "")
        self.tb_focal = QWidget()
        self.tb_focal.setObjectName(u"tb_focal")
        self.horizontalLayout_7 = QHBoxLayout(self.tb_focal)
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.fr_focal = QFrame(self.tb_focal)
        self.fr_focal.setObjectName(u"fr_focal")
        self.fr_focal.setFrameShape(QFrame.Shape.StyledPanel)
        self.fr_focal.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_4 = QGridLayout(self.fr_focal)
        self.gridLayout_4.setObjectName(u"gridLayout_4")
        self.frame_5 = QFrame(self.fr_focal)
        self.frame_5.setObjectName(u"frame_5")
        self.frame_5.setFrameShape(QFrame.Shape.Box)
        self.frame_5.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_3 = QGridLayout(self.frame_5)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.le_largest_diameter = QLineEdit(self.frame_5)
        self.le_largest_diameter.setObjectName(u"le_largest_diameter")

        self.gridLayout_3.addWidget(self.le_largest_diameter, 24, 1, 1, 1)

        self.frame_11 = QFrame(self.frame_5)
        self.frame_11.setObjectName(u"frame_11")
        self.frame_11.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_11.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_12 = QHBoxLayout(self.frame_11)
        self.horizontalLayout_12.setObjectName(u"horizontalLayout_12")
        self.label_37 = QLabel(self.frame_11)
        self.label_37.setObjectName(u"label_37")
        font3 = QFont()
        font3.setPointSize(29)
        font3.setBold(True)
        font3.setUnderline(False)
        self.label_37.setFont(font3)
        self.label_37.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_12.addWidget(self.label_37)


        self.gridLayout_3.addWidget(self.frame_11, 2, 0, 1, 8)

        self.lineEdit = QLineEdit(self.frame_5)
        self.lineEdit.setObjectName(u"lineEdit")

        self.gridLayout_3.addWidget(self.lineEdit, 19, 7, 1, 1)

        self.le_lenstype = QLineEdit(self.frame_5)
        self.le_lenstype.setObjectName(u"le_lenstype")

        self.gridLayout_3.addWidget(self.le_lenstype, 28, 1, 1, 7)

        self.le_maxaperture = QLineEdit(self.frame_5)
        self.le_maxaperture.setObjectName(u"le_maxaperture")

        self.gridLayout_3.addWidget(self.le_maxaperture, 6, 5, 1, 1)

        self.label_14 = QLabel(self.frame_5)
        self.label_14.setObjectName(u"label_14")
        self.label_14.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_14.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_14, 19, 4, 1, 1)

        self.label_41 = QLabel(self.frame_5)
        self.label_41.setObjectName(u"label_41")
        self.label_41.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_41, 28, 0, 1, 1)

        self.label_19 = QLabel(self.frame_5)
        self.label_19.setObjectName(u"label_19")
        self.label_19.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_19, 24, 0, 1, 1)

        self.cb_make = QComboBox(self.frame_5)
        self.cb_make.setObjectName(u"cb_make")

        self.gridLayout_3.addWidget(self.cb_make, 4, 5, 1, 3)

        self.le_lens_mount_description = QLineEdit(self.frame_5)
        self.le_lens_mount_description.setObjectName(u"le_lens_mount_description")

        self.gridLayout_3.addWidget(self.le_lens_mount_description, 5, 1, 1, 7)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Policy.Minimum, QSizePolicy.Policy.Expanding)

        self.gridLayout_3.addItem(self.verticalSpacer, 3, 1, 1, 1)

        self.le_inscriptions = QLineEdit(self.frame_5)
        self.le_inscriptions.setObjectName(u"le_inscriptions")

        self.gridLayout_3.addWidget(self.le_inscriptions, 23, 1, 1, 8)

        self.le_lensvariants = QPlainTextEdit(self.frame_5)
        self.le_lensvariants.setObjectName(u"le_lensvariants")

        self.gridLayout_3.addWidget(self.le_lensvariants, 27, 1, 1, 7)

        self.cb_r_lens_spec = QComboBox(self.frame_5)
        self.cb_r_lens_spec.setObjectName(u"cb_r_lens_spec")

        self.gridLayout_3.addWidget(self.cb_r_lens_spec, 26, 4, 1, 4)

        self.label_25 = QLabel(self.frame_5)
        self.label_25.setObjectName(u"label_25")
        self.label_25.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_25.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)
        self.label_25.setWordWrap(True)

        self.gridLayout_3.addWidget(self.label_25, 6, 4, 1, 1)

        self.label_9 = QLabel(self.frame_5)
        self.label_9.setObjectName(u"label_9")
        self.label_9.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_9, 21, 0, 1, 1)

        self.cb_mount = QComboBox(self.frame_5)
        self.cb_mount.setObjectName(u"cb_mount")

        self.gridLayout_3.addWidget(self.cb_mount, 4, 1, 1, 2)

        self.le_minaperture = QLineEdit(self.frame_5)
        self.le_minaperture.setObjectName(u"le_minaperture")

        self.gridLayout_3.addWidget(self.le_minaperture, 6, 7, 1, 1)

        self.label_11 = QLabel(self.frame_5)
        self.label_11.setObjectName(u"label_11")
        self.label_11.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_11, 23, 0, 1, 1)

        self.label_21 = QLabel(self.frame_5)
        self.label_21.setObjectName(u"label_21")
        self.label_21.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_21, 5, 0, 1, 1)

        self.label_39 = QLabel(self.frame_5)
        self.label_39.setObjectName(u"label_39")
        self.label_39.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_39.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_39, 26, 2, 1, 1)

        self.label_10 = QLabel(self.frame_5)
        self.label_10.setObjectName(u"label_10")
        self.label_10.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_10, 22, 0, 1, 1)

        self.label_24 = QLabel(self.frame_5)
        self.label_24.setObjectName(u"label_24")
        self.label_24.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_24, 26, 0, 1, 1)

        self.label_7 = QLabel(self.frame_5)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_7, 6, 0, 1, 1)

        self.le_number_of_lenses_groups = QLineEdit(self.frame_5)
        self.le_number_of_lenses_groups.setObjectName(u"le_number_of_lenses_groups")

        self.gridLayout_3.addWidget(self.le_number_of_lenses_groups, 26, 1, 1, 1)

        self.le_lens_coding = QLineEdit(self.frame_5)
        self.le_lens_coding.setObjectName(u"le_lens_coding")

        self.gridLayout_3.addWidget(self.le_lens_coding, 21, 1, 1, 7)

        self.le_angle_of_view = QLineEdit(self.frame_5)
        self.le_angle_of_view.setObjectName(u"le_angle_of_view")

        self.gridLayout_3.addWidget(self.le_angle_of_view, 19, 5, 1, 1)

        self.le_aperture = QLineEdit(self.frame_5)
        self.le_aperture.setObjectName(u"le_aperture")

        self.gridLayout_3.addWidget(self.le_aperture, 6, 1, 1, 3)

        self.label_35 = QLabel(self.frame_5)
        self.label_35.setObjectName(u"label_35")
        self.label_35.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_35, 4, 0, 1, 1)

        self.label_36 = QLabel(self.frame_5)
        self.label_36.setObjectName(u"label_36")
        self.label_36.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_36.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_36, 4, 4, 1, 1)

        self.label_15 = QLabel(self.frame_5)
        self.label_15.setObjectName(u"label_15")
        self.label_15.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_15, 19, 6, 1, 1)

        self.le_position_of_entrance_pupil = QLineEdit(self.frame_5)
        self.le_position_of_entrance_pupil.setObjectName(u"le_position_of_entrance_pupil")

        self.gridLayout_3.addWidget(self.le_position_of_entrance_pupil, 22, 1, 1, 8)

        self.le_maximum_magnification = QLineEdit(self.frame_5)
        self.le_maximum_magnification.setObjectName(u"le_maximum_magnification")

        self.gridLayout_3.addWidget(self.le_maximum_magnification, 24, 5, 1, 3)

        self.label_20 = QLabel(self.frame_5)
        self.label_20.setObjectName(u"label_20")
        self.label_20.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_20.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_20, 24, 4, 1, 1)

        self.label_17 = QLabel(self.frame_5)
        self.label_17.setObjectName(u"label_17")
        self.label_17.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_17.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_17, 6, 6, 1, 1)

        self.label_40 = QLabel(self.frame_5)
        self.label_40.setObjectName(u"label_40")
        self.label_40.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_40, 27, 0, 1, 1)

        self.le_bayonet = QLineEdit(self.frame_5)
        self.le_bayonet.setObjectName(u"le_bayonet")

        self.gridLayout_3.addWidget(self.le_bayonet, 20, 5, 1, 3)

        self.label_8 = QLabel(self.frame_5)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_8.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_3.addWidget(self.label_8, 20, 4, 1, 1)

        self.label_5 = QLabel(self.frame_5)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_5, 20, 0, 1, 1)

        self.label_16 = QLabel(self.frame_5)
        self.label_16.setObjectName(u"label_16")
        self.label_16.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_3.addWidget(self.label_16, 19, 0, 1, 1)

        self.le_no_of_blades = QLineEdit(self.frame_5)
        self.le_no_of_blades.setObjectName(u"le_no_of_blades")

        self.gridLayout_3.addWidget(self.le_no_of_blades, 19, 1, 1, 3)

        self.le_t_stop = QLineEdit(self.frame_5)
        self.le_t_stop.setObjectName(u"le_t_stop")

        self.gridLayout_3.addWidget(self.le_t_stop, 20, 1, 1, 3)


        self.gridLayout_4.addWidget(self.frame_5, 0, 0, 1, 1)

        self.frame_12 = QFrame(self.fr_focal)
        self.frame_12.setObjectName(u"frame_12")
        self.frame_12.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_12.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_5 = QGridLayout(self.frame_12)
        self.gridLayout_5.setObjectName(u"gridLayout_5")
        self.pushButton_3 = QPushButton(self.frame_12)
        self.pushButton_3.setObjectName(u"pushButton_3")

        self.gridLayout_5.addWidget(self.pushButton_3, 0, 0, 1, 1)


        self.gridLayout_4.addWidget(self.frame_12, 2, 0, 1, 1)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Policy.Minimum, QSizePolicy.Policy.Expanding)

        self.gridLayout_4.addItem(self.verticalSpacer_2, 1, 0, 1, 1)

        self.frame_12.raise_()
        self.frame_5.raise_()

        self.horizontalLayout_7.addWidget(self.fr_focal)

        icon2 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DialogInformation))
        self.tab_all_details.addTab(self.tb_focal, icon2, "")
        self.tb_misc = QWidget()
        self.tb_misc.setObjectName(u"tb_misc")
        self.gridLayout_13 = QGridLayout(self.tb_misc)
        self.gridLayout_13.setObjectName(u"gridLayout_13")
        self.frame_all = QFrame(self.tb_misc)
        self.frame_all.setObjectName(u"frame_all")
        self.frame_all.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_all.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_11 = QGridLayout(self.frame_all)
        self.gridLayout_11.setObjectName(u"gridLayout_11")
        self.frame_14 = QFrame(self.frame_all)
        self.frame_14.setObjectName(u"frame_14")
        self.frame_14.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_14.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_10 = QGridLayout(self.frame_14)
        self.gridLayout_10.setObjectName(u"gridLayout_10")
        self.frame_27 = QFrame(self.frame_14)
        self.frame_27.setObjectName(u"frame_27")
        self.frame_27.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_27.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_20 = QHBoxLayout(self.frame_27)
        self.horizontalLayout_20.setObjectName(u"horizontalLayout_20")
        self.label_6 = QLabel(self.frame_27)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setFont(font2)
        self.label_6.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_20.addWidget(self.label_6)


        self.gridLayout_10.addWidget(self.frame_27, 0, 0, 1, 2)

        self.label_34 = QLabel(self.frame_14)
        self.label_34.setObjectName(u"label_34")

        self.gridLayout_10.addWidget(self.label_34, 1, 0, 1, 1)

        self.le_accessories = QPlainTextEdit(self.frame_14)
        self.le_accessories.setObjectName(u"le_accessories")

        self.gridLayout_10.addWidget(self.le_accessories, 1, 1, 1, 1)

        self.label_42 = QLabel(self.frame_14)
        self.label_42.setObjectName(u"label_42")

        self.gridLayout_10.addWidget(self.label_42, 2, 0, 1, 1)

        self.le_production_era = QPlainTextEdit(self.frame_14)
        self.le_production_era.setObjectName(u"le_production_era")

        self.gridLayout_10.addWidget(self.le_production_era, 2, 1, 1, 1)

        self.label_43 = QLabel(self.frame_14)
        self.label_43.setObjectName(u"label_43")

        self.gridLayout_10.addWidget(self.label_43, 3, 0, 1, 1)

        self.le_scales = QLineEdit(self.frame_14)
        self.le_scales.setObjectName(u"le_scales")

        self.gridLayout_10.addWidget(self.le_scales, 3, 1, 1, 1)

        self.label_44 = QLabel(self.frame_14)
        self.label_44.setObjectName(u"label_44")

        self.gridLayout_10.addWidget(self.label_44, 4, 0, 1, 1)

        self.le_smallest_object_field = QLineEdit(self.frame_14)
        self.le_smallest_object_field.setObjectName(u"le_smallest_object_field")

        self.gridLayout_10.addWidget(self.le_smallest_object_field, 4, 1, 1, 1)

        self.label_45 = QLabel(self.frame_14)
        self.label_45.setObjectName(u"label_45")

        self.gridLayout_10.addWidget(self.label_45, 5, 0, 1, 1)

        self.le_special_editions = QLineEdit(self.frame_14)
        self.le_special_editions.setObjectName(u"le_special_editions")

        self.gridLayout_10.addWidget(self.le_special_editions, 5, 1, 1, 1)

        self.label_46 = QLabel(self.frame_14)
        self.label_46.setObjectName(u"label_46")

        self.gridLayout_10.addWidget(self.label_46, 6, 0, 1, 1)

        self.le_tech_data = QPlainTextEdit(self.frame_14)
        self.le_tech_data.setObjectName(u"le_tech_data")

        self.gridLayout_10.addWidget(self.le_tech_data, 6, 1, 1, 1)

        self.label_47 = QLabel(self.frame_14)
        self.label_47.setObjectName(u"label_47")

        self.gridLayout_10.addWidget(self.label_47, 7, 0, 1, 1)

        self.le_viewfinder = QLineEdit(self.frame_14)
        self.le_viewfinder.setObjectName(u"le_viewfinder")

        self.gridLayout_10.addWidget(self.le_viewfinder, 7, 1, 1, 1)


        self.gridLayout_11.addWidget(self.frame_14, 0, 0, 1, 1)

        self.frame_13 = QFrame(self.frame_all)
        self.frame_13.setObjectName(u"frame_13")
        self.frame_13.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_13.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_6 = QHBoxLayout(self.frame_13)
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.pushButton_4 = QPushButton(self.frame_13)
        self.pushButton_4.setObjectName(u"pushButton_4")

        self.horizontalLayout_6.addWidget(self.pushButton_4)

        self.pushButton_5 = QPushButton(self.frame_13)
        self.pushButton_5.setObjectName(u"pushButton_5")

        self.horizontalLayout_6.addWidget(self.pushButton_5)


        self.gridLayout_11.addWidget(self.frame_13, 1, 0, 1, 1)


        self.gridLayout_13.addWidget(self.frame_all, 0, 0, 1, 1)

        icon3 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DocumentProperties))
        self.tab_all_details.addTab(self.tb_misc, icon3, "")
        self.tb_purchase = QWidget()
        self.tb_purchase.setObjectName(u"tb_purchase")
        self.verticalLayout_3 = QVBoxLayout(self.tb_purchase)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.frame_17 = QFrame(self.tb_purchase)
        self.frame_17.setObjectName(u"frame_17")
        self.frame_17.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_17.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_15 = QHBoxLayout(self.frame_17)
        self.horizontalLayout_15.setObjectName(u"horizontalLayout_15")
        self.lb_purchases = QLabel(self.frame_17)
        self.lb_purchases.setObjectName(u"lb_purchases")
        self.lb_purchases.setFont(font3)
        self.lb_purchases.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_15.addWidget(self.lb_purchases)

        self.horizontalSpacer_7 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_15.addItem(self.horizontalSpacer_7)

        self.le_pur_id = QLineEdit(self.frame_17)
        self.le_pur_id.setObjectName(u"le_pur_id")
        self.le_pur_id.setEnabled(False)

        self.horizontalLayout_15.addWidget(self.le_pur_id)

        self.le_pur_id_lens = QLineEdit(self.frame_17)
        self.le_pur_id_lens.setObjectName(u"le_pur_id_lens")
        self.le_pur_id_lens.setEnabled(False)

        self.horizontalLayout_15.addWidget(self.le_pur_id_lens)

        self.le_pur_datecreated = QLineEdit(self.frame_17)
        self.le_pur_datecreated.setObjectName(u"le_pur_datecreated")

        self.horizontalLayout_15.addWidget(self.le_pur_datecreated)

        self.le_pur_datechanged = QLineEdit(self.frame_17)
        self.le_pur_datechanged.setObjectName(u"le_pur_datechanged")

        self.horizontalLayout_15.addWidget(self.le_pur_datechanged)


        self.verticalLayout_3.addWidget(self.frame_17)

        self.frame_16 = QFrame(self.tb_purchase)
        self.frame_16.setObjectName(u"frame_16")
        self.frame_16.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_16.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_6 = QGridLayout(self.frame_16)
        self.gridLayout_6.setObjectName(u"gridLayout_6")
        self.label_50 = QLabel(self.frame_16)
        self.label_50.setObjectName(u"label_50")
        self.label_50.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_50.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_6.addWidget(self.label_50, 1, 3, 1, 1)

        self.le_pur_purchase_date = QLineEdit(self.frame_16)
        self.le_pur_purchase_date.setObjectName(u"le_pur_purchase_date")

        self.gridLayout_6.addWidget(self.le_pur_purchase_date, 1, 1, 1, 1)

        self.le_pur_purchase_from = QLineEdit(self.frame_16)
        self.le_pur_purchase_from.setObjectName(u"le_pur_purchase_from")

        self.gridLayout_6.addWidget(self.le_pur_purchase_from, 1, 4, 1, 3)

        self.label_52 = QLabel(self.frame_16)
        self.label_52.setObjectName(u"label_52")
        self.label_52.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_52.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_6.addWidget(self.label_52, 2, 5, 1, 1)

        self.pb_pur_datepick = QPushButton(self.frame_16)
        self.pb_pur_datepick.setObjectName(u"pb_pur_datepick")
        self.pb_pur_datepick.setIcon(icon3)
        self.pb_pur_datepick.setIconSize(QSize(32, 32))

        self.gridLayout_6.addWidget(self.pb_pur_datepick, 1, 2, 1, 1)

        self.le_pur_purchase_comment = QPlainTextEdit(self.frame_16)
        self.le_pur_purchase_comment.setObjectName(u"le_pur_purchase_comment")

        self.gridLayout_6.addWidget(self.le_pur_purchase_comment, 4, 1, 1, 6)

        self.le_pur_purchase_serial_no = QLineEdit(self.frame_16)
        self.le_pur_purchase_serial_no.setObjectName(u"le_pur_purchase_serial_no")

        self.gridLayout_6.addWidget(self.le_pur_purchase_serial_no, 2, 4, 1, 1)

        self.label_54 = QLabel(self.frame_16)
        self.label_54.setObjectName(u"label_54")
        self.label_54.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_6.addWidget(self.label_54, 4, 0, 1, 1)

        self.label_53 = QLabel(self.frame_16)
        self.label_53.setObjectName(u"label_53")
        self.label_53.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_53.setMargin(0)

        self.gridLayout_6.addWidget(self.label_53, 3, 0, 1, 1)

        self.label_51 = QLabel(self.frame_16)
        self.label_51.setObjectName(u"label_51")
        self.label_51.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_51.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_6.addWidget(self.label_51, 2, 3, 1, 1)

        self.label_48 = QLabel(self.frame_16)
        self.label_48.setObjectName(u"label_48")
        self.label_48.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_6.addWidget(self.label_48, 1, 0, 1, 1)

        self.le_pur_purchase_lens_colour = QLineEdit(self.frame_16)
        self.le_pur_purchase_lens_colour.setObjectName(u"le_pur_purchase_lens_colour")

        self.gridLayout_6.addWidget(self.le_pur_purchase_lens_colour, 2, 6, 1, 1)

        self.le_pur_purchase_lens_condition = QPlainTextEdit(self.frame_16)
        self.le_pur_purchase_lens_condition.setObjectName(u"le_pur_purchase_lens_condition")

        self.gridLayout_6.addWidget(self.le_pur_purchase_lens_condition, 3, 1, 1, 6)

        self.label_49 = QLabel(self.frame_16)
        self.label_49.setObjectName(u"label_49")
        self.label_49.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_6.addWidget(self.label_49, 2, 0, 1, 1)

        self.le_pur_purchase_price = QLineEdit(self.frame_16)
        self.le_pur_purchase_price.setObjectName(u"le_pur_purchase_price")

        self.gridLayout_6.addWidget(self.le_pur_purchase_price, 2, 1, 1, 2)


        self.verticalLayout_3.addWidget(self.frame_16)

        self.frame_18 = QFrame(self.tb_purchase)
        self.frame_18.setObjectName(u"frame_18")
        self.frame_18.setStyleSheet(u"background-color: rgb(42, 57, 109);")
        self.frame_18.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_18.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_14 = QHBoxLayout(self.frame_18)
        self.horizontalLayout_14.setObjectName(u"horizontalLayout_14")
        self.pb_pur_previous = QPushButton(self.frame_18)
        self.pb_pur_previous.setObjectName(u"pb_pur_previous")
        font4 = QFont()
        font4.setBold(False)
        font4.setUnderline(False)
        self.pb_pur_previous.setFont(font4)
        self.pb_pur_previous.setStyleSheet(u"")
        icon4 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoPrevious))
        self.pb_pur_previous.setIcon(icon4)
        self.pb_pur_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout_14.addWidget(self.pb_pur_previous)

        self.pb_pur_next = QPushButton(self.frame_18)
        self.pb_pur_next.setObjectName(u"pb_pur_next")
        self.pb_pur_next.setFont(font4)
        self.pb_pur_next.setStyleSheet(u"")
        icon5 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.GoNext))
        self.pb_pur_next.setIcon(icon5)
        self.pb_pur_next.setIconSize(QSize(32, 32))

        self.horizontalLayout_14.addWidget(self.pb_pur_next)

        self.horizontalSpacer_8 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_14.addItem(self.horizontalSpacer_8)

        self.pb_purch_new = QPushButton(self.frame_18)
        self.pb_purch_new.setObjectName(u"pb_purch_new")
        self.pb_purch_new.setFont(font4)
        self.pb_purch_new.setStyleSheet(u"")
        self.pb_purch_new.setIcon(icon)
        self.pb_purch_new.setIconSize(QSize(32, 32))

        self.horizontalLayout_14.addWidget(self.pb_purch_new)

        self.pb_purch_save = QPushButton(self.frame_18)
        self.pb_purch_save.setObjectName(u"pb_purch_save")
        self.pb_purch_save.setFont(font4)
        self.pb_purch_save.setStyleSheet(u"")
        self.pb_purch_save.setIcon(icon1)
        self.pb_purch_save.setIconSize(QSize(32, 32))

        self.horizontalLayout_14.addWidget(self.pb_purch_save)

        self.pb_purch_cancel = QPushButton(self.frame_18)
        self.pb_purch_cancel.setObjectName(u"pb_purch_cancel")
        self.pb_purch_cancel.setEnabled(True)
        self.pb_purch_cancel.setFont(font4)
        self.pb_purch_cancel.setStyleSheet(u"")
        icon6 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.EditRedo))
        self.pb_purch_cancel.setIcon(icon6)
        self.pb_purch_cancel.setIconSize(QSize(32, 32))

        self.horizontalLayout_14.addWidget(self.pb_purch_cancel)

        self.pb_pur_previous.raise_()
        self.pb_pur_next.raise_()
        self.pb_purch_save.raise_()
        self.pb_purch_cancel.raise_()
        self.pb_purch_new.raise_()

        self.verticalLayout_3.addWidget(self.frame_18)

        icon7 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.InputGaming))
        self.tab_all_details.addTab(self.tb_purchase, icon7, "")
        self.tb_sold = QWidget()
        self.tb_sold.setObjectName(u"tb_sold")
        self.verticalLayout_4 = QVBoxLayout(self.tb_sold)
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.frame_19 = QFrame(self.tb_sold)
        self.frame_19.setObjectName(u"frame_19")
        self.frame_19.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_19.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_16 = QHBoxLayout(self.frame_19)
        self.horizontalLayout_16.setObjectName(u"horizontalLayout_16")
        self.label_55 = QLabel(self.frame_19)
        self.label_55.setObjectName(u"label_55")
        self.label_55.setFont(font2)
        self.label_55.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_16.addWidget(self.label_55)

        self.le_sale_id = QLineEdit(self.frame_19)
        self.le_sale_id.setObjectName(u"le_sale_id")

        self.horizontalLayout_16.addWidget(self.le_sale_id)

        self.le_sale_id_lens = QLineEdit(self.frame_19)
        self.le_sale_id_lens.setObjectName(u"le_sale_id_lens")

        self.horizontalLayout_16.addWidget(self.le_sale_id_lens)


        self.verticalLayout_4.addWidget(self.frame_19)

        self.frame_20 = QFrame(self.tb_sold)
        self.frame_20.setObjectName(u"frame_20")
        self.frame_20.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_20.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_7 = QGridLayout(self.frame_20)
        self.gridLayout_7.setObjectName(u"gridLayout_7")
        self.label_56 = QLabel(self.frame_20)
        self.label_56.setObjectName(u"label_56")
        self.label_56.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_7.addWidget(self.label_56, 0, 0, 1, 1)

        self.le_sale_datecreated = QLineEdit(self.frame_20)
        self.le_sale_datecreated.setObjectName(u"le_sale_datecreated")
        self.le_sale_datecreated.setEnabled(False)
        self.le_sale_datecreated.setMinimumSize(QSize(280, 0))

        self.gridLayout_7.addWidget(self.le_sale_datecreated, 4, 7, 1, 1)

        self.le_sale_price = QLineEdit(self.frame_20)
        self.le_sale_price.setObjectName(u"le_sale_price")

        self.gridLayout_7.addWidget(self.le_sale_price, 1, 2, 1, 1)

        self.le_sale_lens_condition = QPlainTextEdit(self.frame_20)
        self.le_sale_lens_condition.setObjectName(u"le_sale_lens_condition")

        self.gridLayout_7.addWidget(self.le_sale_lens_condition, 2, 2, 1, 9)

        self.horizontalSpacer_10 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout_7.addItem(self.horizontalSpacer_10, 4, 2, 1, 4)

        self.le_sale_to = QLineEdit(self.frame_20)
        self.le_sale_to.setObjectName(u"le_sale_to")

        self.gridLayout_7.addWidget(self.le_sale_to, 0, 5, 1, 6)

        self.label_64 = QLabel(self.frame_20)
        self.label_64.setObjectName(u"label_64")

        self.gridLayout_7.addWidget(self.label_64, 4, 9, 1, 1)

        self.le_sale_date = QLineEdit(self.frame_20)
        self.le_sale_date.setObjectName(u"le_sale_date")

        self.gridLayout_7.addWidget(self.le_sale_date, 0, 2, 1, 1)

        self.pb_sale_datepick = QPushButton(self.frame_20)
        self.pb_sale_datepick.setObjectName(u"pb_sale_datepick")
        self.pb_sale_datepick.setIcon(icon3)
        self.pb_sale_datepick.setIconSize(QSize(32, 32))

        self.gridLayout_7.addWidget(self.pb_sale_datepick, 0, 3, 1, 1)

        self.horizontalSpacer_9 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout_7.addItem(self.horizontalSpacer_9, 1, 6, 1, 1)

        self.le_sale_serial_no = QLineEdit(self.frame_20)
        self.le_sale_serial_no.setObjectName(u"le_sale_serial_no")

        self.gridLayout_7.addWidget(self.le_sale_serial_no, 1, 5, 1, 1)

        self.label_62 = QLabel(self.frame_20)
        self.label_62.setObjectName(u"label_62")
        self.label_62.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_7.addWidget(self.label_62, 2, 0, 1, 1)

        self.label_59 = QLabel(self.frame_20)
        self.label_59.setObjectName(u"label_59")
        self.label_59.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_7.addWidget(self.label_59, 1, 4, 1, 1)

        self.label_61 = QLabel(self.frame_20)
        self.label_61.setObjectName(u"label_61")
        self.label_61.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_7.addWidget(self.label_61, 3, 0, 1, 1)

        self.le_sale_lens_colour = QLineEdit(self.frame_20)
        self.le_sale_lens_colour.setObjectName(u"le_sale_lens_colour")

        self.gridLayout_7.addWidget(self.le_sale_lens_colour, 1, 8, 1, 3)

        self.horizontalSpacer_11 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout_7.addItem(self.horizontalSpacer_11, 4, 8, 1, 1)

        self.le_sale_comment = QPlainTextEdit(self.frame_20)
        self.le_sale_comment.setObjectName(u"le_sale_comment")

        self.gridLayout_7.addWidget(self.le_sale_comment, 3, 2, 1, 9)

        self.label_57 = QLabel(self.frame_20)
        self.label_57.setObjectName(u"label_57")
        self.label_57.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_57.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_7.addWidget(self.label_57, 0, 4, 1, 1)

        self.le_sale_datechanged = QLineEdit(self.frame_20)
        self.le_sale_datechanged.setObjectName(u"le_sale_datechanged")
        self.le_sale_datechanged.setEnabled(False)
        self.le_sale_datechanged.setMinimumSize(QSize(280, 0))

        self.gridLayout_7.addWidget(self.le_sale_datechanged, 4, 10, 1, 1)

        self.label_60 = QLabel(self.frame_20)
        self.label_60.setObjectName(u"label_60")
        self.label_60.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_60.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_7.addWidget(self.label_60, 1, 7, 1, 1)

        self.label_63 = QLabel(self.frame_20)
        self.label_63.setObjectName(u"label_63")

        self.gridLayout_7.addWidget(self.label_63, 4, 6, 1, 1)

        self.label_58 = QLabel(self.frame_20)
        self.label_58.setObjectName(u"label_58")
        self.label_58.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_7.addWidget(self.label_58, 1, 0, 1, 1)


        self.verticalLayout_4.addWidget(self.frame_20)

        self.frame_22 = QFrame(self.tb_sold)
        self.frame_22.setObjectName(u"frame_22")
        self.frame_22.setStyleSheet(u"background-color: rgb(42, 57, 109);")
        self.frame_22.setFrameShape(QFrame.Shape.Box)
        self.frame_22.setFrameShadow(QFrame.Shadow.Raised)
        self.frame_22.setLineWidth(1)
        self.frame_22.setMidLineWidth(0)
        self.horizontalLayout_17 = QHBoxLayout(self.frame_22)
        self.horizontalLayout_17.setObjectName(u"horizontalLayout_17")
        self.pb_sale_previous = QPushButton(self.frame_22)
        self.pb_sale_previous.setObjectName(u"pb_sale_previous")
        self.pb_sale_previous.setStyleSheet(u"")
        self.pb_sale_previous.setIcon(icon4)
        self.pb_sale_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout_17.addWidget(self.pb_sale_previous)

        self.pb_sale_next = QPushButton(self.frame_22)
        self.pb_sale_next.setObjectName(u"pb_sale_next")
        self.pb_sale_next.setStyleSheet(u"")
        self.pb_sale_next.setIcon(icon5)
        self.pb_sale_next.setIconSize(QSize(32, 32))

        self.horizontalLayout_17.addWidget(self.pb_sale_next)

        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_17.addItem(self.horizontalSpacer_6)

        self.pb_sale_new_sale = QPushButton(self.frame_22)
        self.pb_sale_new_sale.setObjectName(u"pb_sale_new_sale")
        self.pb_sale_new_sale.setStyleSheet(u"")
        icon8 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.SoftwareUpdateUrgent))
        self.pb_sale_new_sale.setIcon(icon8)
        self.pb_sale_new_sale.setIconSize(QSize(32, 32))

        self.horizontalLayout_17.addWidget(self.pb_sale_new_sale)

        self.pb_sale_save = QPushButton(self.frame_22)
        self.pb_sale_save.setObjectName(u"pb_sale_save")
        self.pb_sale_save.setStyleSheet(u"")
        self.pb_sale_save.setIcon(icon1)
        self.pb_sale_save.setIconSize(QSize(32, 32))

        self.horizontalLayout_17.addWidget(self.pb_sale_save)

        self.pb_sale_cancel = QPushButton(self.frame_22)
        self.pb_sale_cancel.setObjectName(u"pb_sale_cancel")
        self.pb_sale_cancel.setStyleSheet(u"")
        self.pb_sale_cancel.setIcon(icon6)
        self.pb_sale_cancel.setIconSize(QSize(32, 32))

        self.horizontalLayout_17.addWidget(self.pb_sale_cancel)


        self.verticalLayout_4.addWidget(self.frame_22)

        self.frame_21 = QFrame(self.tb_sold)
        self.frame_21.setObjectName(u"frame_21")
        self.frame_21.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_21.setFrameShadow(QFrame.Shadow.Raised)

        self.verticalLayout_4.addWidget(self.frame_21)

        icon9 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.EditDelete))
        self.tab_all_details.addTab(self.tb_sold, icon9, "")
        self.tb_cla = QWidget()
        self.tb_cla.setObjectName(u"tb_cla")
        self.verticalLayout_5 = QVBoxLayout(self.tb_cla)
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.frame_23 = QFrame(self.tb_cla)
        self.frame_23.setObjectName(u"frame_23")
        font5 = QFont()
        font5.setPointSize(28)
        font5.setUnderline(False)
        self.frame_23.setFont(font5)
        self.frame_23.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_23.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_18 = QHBoxLayout(self.frame_23)
        self.horizontalLayout_18.setObjectName(u"horizontalLayout_18")
        self.label_65 = QLabel(self.frame_23)
        self.label_65.setObjectName(u"label_65")
        self.label_65.setFont(font2)
        self.label_65.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_18.addWidget(self.label_65)

        self.le_cla_id = QLineEdit(self.frame_23)
        self.le_cla_id.setObjectName(u"le_cla_id")

        self.horizontalLayout_18.addWidget(self.le_cla_id)

        self.le_cla_id_lens = QLineEdit(self.frame_23)
        self.le_cla_id_lens.setObjectName(u"le_cla_id_lens")

        self.horizontalLayout_18.addWidget(self.le_cla_id_lens)


        self.verticalLayout_5.addWidget(self.frame_23)

        self.frame_24 = QFrame(self.tb_cla)
        self.frame_24.setObjectName(u"frame_24")
        self.frame_24.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_24.setFrameShadow(QFrame.Shadow.Raised)
        self.gridLayout_8 = QGridLayout(self.frame_24)
        self.gridLayout_8.setObjectName(u"gridLayout_8")
        self.le_cla_actual_cost = QLineEdit(self.frame_24)
        self.le_cla_actual_cost.setObjectName(u"le_cla_actual_cost")

        self.gridLayout_8.addWidget(self.le_cla_actual_cost, 3, 8, 1, 1)

        self.label_74 = QLabel(self.frame_24)
        self.label_74.setObjectName(u"label_74")
        self.label_74.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_74.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_8.addWidget(self.label_74, 5, 8, 1, 1)

        self.pb_cla_date_return = QPushButton(self.frame_24)
        self.pb_cla_date_return.setObjectName(u"pb_cla_date_return")
        self.pb_cla_date_return.setIcon(icon3)

        self.gridLayout_8.addWidget(self.pb_cla_date_return, 3, 12, 1, 1)

        self.le_cla_date_shipment = QLineEdit(self.frame_24)
        self.le_cla_date_shipment.setObjectName(u"le_cla_date_shipment")

        self.gridLayout_8.addWidget(self.le_cla_date_shipment, 2, 11, 1, 1)

        self.le_cla_datechanged = QLineEdit(self.frame_24)
        self.le_cla_datechanged.setObjectName(u"le_cla_datechanged")
        self.le_cla_datechanged.setEnabled(False)

        self.gridLayout_8.addWidget(self.le_cla_datechanged, 5, 11, 1, 2)

        self.label_69 = QLabel(self.frame_24)
        self.label_69.setObjectName(u"label_69")
        self.label_69.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_69.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_8.addWidget(self.label_69, 2, 10, 1, 1)

        self.label_67 = QLabel(self.frame_24)
        self.label_67.setObjectName(u"label_67")
        self.label_67.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_67, 1, 0, 1, 1)

        self.le_cla_eoc = QLineEdit(self.frame_24)
        self.le_cla_eoc.setObjectName(u"le_cla_eoc")

        self.gridLayout_8.addWidget(self.le_cla_eoc, 3, 2, 1, 1)

        self.le_cla_warranty = QCheckBox(self.frame_24)
        self.le_cla_warranty.setObjectName(u"le_cla_warranty")
        sizePolicy = QSizePolicy(QSizePolicy.Policy.Maximum, QSizePolicy.Policy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.le_cla_warranty.sizePolicy().hasHeightForWidth())
        self.le_cla_warranty.setSizePolicy(sizePolicy)
        self.le_cla_warranty.setMinimumSize(QSize(0, 0))
        self.le_cla_warranty.setSizeIncrement(QSize(0, 0))
        self.le_cla_warranty.setBaseSize(QSize(0, 0))
        self.le_cla_warranty.setStyleSheet(u"QCheckBox::indicator { width: 40; height: 40px;}\n"
"color: rgb(0, 170, 255);")
        icon10 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.Battery))
        self.le_cla_warranty.setIcon(icon10)
        self.le_cla_warranty.setIconSize(QSize(32, 32))

        self.gridLayout_8.addWidget(self.le_cla_warranty, 2, 5, 1, 1)

        self.le_cla_datecreated = QLineEdit(self.frame_24)
        self.le_cla_datecreated.setObjectName(u"le_cla_datecreated")
        self.le_cla_datecreated.setEnabled(False)

        self.gridLayout_8.addWidget(self.le_cla_datecreated, 5, 9, 1, 1)

        self.le_cla_date_arrival = QLineEdit(self.frame_24)
        self.le_cla_date_arrival.setObjectName(u"le_cla_date_arrival")

        self.gridLayout_8.addWidget(self.le_cla_date_arrival, 3, 11, 1, 1)

        self.horizontalSpacer_15 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout_8.addItem(self.horizontalSpacer_15, 2, 3, 1, 1)

        self.le_cla_comments = QPlainTextEdit(self.frame_24)
        self.le_cla_comments.setObjectName(u"le_cla_comments")

        self.gridLayout_8.addWidget(self.le_cla_comments, 4, 2, 1, 11)

        self.label_70 = QLabel(self.frame_24)
        self.label_70.setObjectName(u"label_70")
        self.label_70.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_70, 3, 0, 1, 1)

        self.label_73 = QLabel(self.frame_24)
        self.label_73.setObjectName(u"label_73")
        self.label_73.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_73, 4, 0, 1, 1)

        self.label_71 = QLabel(self.frame_24)
        self.label_71.setObjectName(u"label_71")
        self.label_71.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_71.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_8.addWidget(self.label_71, 3, 5, 1, 1)

        self.label_68 = QLabel(self.frame_24)
        self.label_68.setObjectName(u"label_68")
        self.label_68.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_68, 2, 0, 1, 1)

        self.label_72 = QLabel(self.frame_24)
        self.label_72.setObjectName(u"label_72")
        self.label_72.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_72.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_8.addWidget(self.label_72, 3, 10, 1, 1)

        self.pb_cla_date_shipment = QPushButton(self.frame_24)
        self.pb_cla_date_shipment.setObjectName(u"pb_cla_date_shipment")
        self.pb_cla_date_shipment.setIcon(icon3)

        self.gridLayout_8.addWidget(self.pb_cla_date_shipment, 2, 12, 1, 1)

        self.le_cla_reason = QPlainTextEdit(self.frame_24)
        self.le_cla_reason.setObjectName(u"le_cla_reason")

        self.gridLayout_8.addWidget(self.le_cla_reason, 0, 2, 1, 11)

        self.label_66 = QLabel(self.frame_24)
        self.label_66.setObjectName(u"label_66")
        self.label_66.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_66, 0, 0, 1, 1)

        self.le_cla_serial_no = QLineEdit(self.frame_24)
        self.le_cla_serial_no.setObjectName(u"le_cla_serial_no")

        self.gridLayout_8.addWidget(self.le_cla_serial_no, 2, 2, 1, 1)

        self.frame_buttons = QFrame(self.frame_24)
        self.frame_buttons.setObjectName(u"frame_buttons")
        self.frame_buttons.setStyleSheet(u"background-color: rgb(42, 57, 109);")
        self.frame_buttons.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_buttons.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_19 = QHBoxLayout(self.frame_buttons)
        self.horizontalLayout_19.setObjectName(u"horizontalLayout_19")
        self.pb_cla_previous = QPushButton(self.frame_buttons)
        self.pb_cla_previous.setObjectName(u"pb_cla_previous")
        self.pb_cla_previous.setStyleSheet(u"")
        self.pb_cla_previous.setIcon(icon4)
        self.pb_cla_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout_19.addWidget(self.pb_cla_previous)

        self.pb_cla_next = QPushButton(self.frame_buttons)
        self.pb_cla_next.setObjectName(u"pb_cla_next")
        self.pb_cla_next.setStyleSheet(u"")
        self.pb_cla_next.setIcon(icon5)
        self.pb_cla_next.setIconSize(QSize(32, 32))

        self.horizontalLayout_19.addWidget(self.pb_cla_next)

        self.horizontalSpacer_14 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_19.addItem(self.horizontalSpacer_14)

        self.pb_cla_new = QPushButton(self.frame_buttons)
        self.pb_cla_new.setObjectName(u"pb_cla_new")
        self.pb_cla_new.setStyleSheet(u"")
        self.pb_cla_new.setIcon(icon8)
        self.pb_cla_new.setIconSize(QSize(32, 32))

        self.horizontalLayout_19.addWidget(self.pb_cla_new)

        self.pb_cla_save = QPushButton(self.frame_buttons)
        self.pb_cla_save.setObjectName(u"pb_cla_save")
        self.pb_cla_save.setStyleSheet(u"")
        self.pb_cla_save.setIcon(icon1)
        self.pb_cla_save.setIconSize(QSize(32, 32))

        self.horizontalLayout_19.addWidget(self.pb_cla_save)

        self.pb_cla_cancel = QPushButton(self.frame_buttons)
        self.pb_cla_cancel.setObjectName(u"pb_cla_cancel")
        self.pb_cla_cancel.setStyleSheet(u"")
        self.pb_cla_cancel.setIcon(icon6)
        self.pb_cla_cancel.setIconSize(QSize(32, 32))

        self.horizontalLayout_19.addWidget(self.pb_cla_cancel)


        self.gridLayout_8.addWidget(self.frame_buttons, 6, 0, 1, 13)

        self.label_75 = QLabel(self.frame_24)
        self.label_75.setObjectName(u"label_75")
        self.label_75.setStyleSheet(u"color: rgb(0, 170, 255);")
        self.label_75.setAlignment(Qt.AlignmentFlag.AlignRight|Qt.AlignmentFlag.AlignTrailing|Qt.AlignmentFlag.AlignVCenter)

        self.gridLayout_8.addWidget(self.label_75, 5, 10, 1, 1)

        self.le_cla_recipient = QLineEdit(self.frame_24)
        self.le_cla_recipient.setObjectName(u"le_cla_recipient")

        self.gridLayout_8.addWidget(self.le_cla_recipient, 1, 2, 1, 11)

        self.horizontalSpacer_13 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.gridLayout_8.addItem(self.horizontalSpacer_13, 3, 9, 1, 1)

        self.label_12 = QLabel(self.frame_24)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setStyleSheet(u"color: rgb(0, 170, 255);")

        self.gridLayout_8.addWidget(self.label_12, 2, 4, 1, 1)


        self.verticalLayout_5.addWidget(self.frame_24)

        icon11 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.SystemReboot))
        self.tab_all_details.addTab(self.tb_cla, icon11, "")
        self.tb_sn = QWidget()
        self.tb_sn.setObjectName(u"tb_sn")
        self.verticalLayout_6 = QVBoxLayout(self.tb_sn)
        self.verticalLayout_6.setObjectName(u"verticalLayout_6")
        self.frame_6 = QFrame(self.tb_sn)
        self.frame_6.setObjectName(u"frame_6")
        self.frame_6.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_6.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_8 = QHBoxLayout(self.frame_6)
        self.horizontalLayout_8.setObjectName(u"horizontalLayout_8")
        self.label = QLabel(self.frame_6)
        self.label.setObjectName(u"label")
        self.label.setFont(font2)
        self.label.setStyleSheet(u"color: rgb(255, 170, 0);")

        self.horizontalLayout_8.addWidget(self.label)


        self.verticalLayout_6.addWidget(self.frame_6)

        self.frame_7 = QFrame(self.tb_sn)
        self.frame_7.setObjectName(u"frame_7")
        self.frame_7.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_7.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_9 = QHBoxLayout(self.frame_7)
        self.horizontalLayout_9.setObjectName(u"horizontalLayout_9")
        self.tbl_serial_numbers = QTableView(self.frame_7)
        self.tbl_serial_numbers.setObjectName(u"tbl_serial_numbers")

        self.horizontalLayout_9.addWidget(self.tbl_serial_numbers)


        self.verticalLayout_6.addWidget(self.frame_7)

        self.frame_9 = QFrame(self.tb_sn)
        self.frame_9.setObjectName(u"frame_9")
        self.frame_9.setStyleSheet(u"background-color: rgb(42, 57, 109);")
        self.frame_9.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_9.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_3 = QHBoxLayout(self.frame_9)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.pb_add = QPushButton(self.frame_9)
        self.pb_add.setObjectName(u"pb_add")
        self.pb_add.setStyleSheet(u"")

        self.horizontalLayout_3.addWidget(self.pb_add)

        self.pb_delete = QPushButton(self.frame_9)
        self.pb_delete.setObjectName(u"pb_delete")
        self.pb_delete.setStyleSheet(u"")

        self.horizontalLayout_3.addWidget(self.pb_delete)

        self.horizontalSpacer_12 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_3.addItem(self.horizontalSpacer_12)

        self.pb_save_changes = QPushButton(self.frame_9)
        self.pb_save_changes.setObjectName(u"pb_save_changes")
        self.pb_save_changes.setStyleSheet(u"")

        self.horizontalLayout_3.addWidget(self.pb_save_changes)


        self.verticalLayout_6.addWidget(self.frame_9)

        icon12 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaPlaylistRepeat))
        self.tab_all_details.addTab(self.tb_sn, icon12, "")

        self.verticalLayout_7.addWidget(self.tab_all_details)


        self.horizontalLayout_4.addWidget(self.frame_tabs)

        self.frame_img = QFrame(self.frame_header_tabs)
        self.frame_img.setObjectName(u"frame_img")
        self.frame_img.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_img.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_2 = QHBoxLayout(self.frame_img)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.img_label = QLabel(self.frame_img)
        self.img_label.setObjectName(u"img_label")
        self.img_label.setMinimumSize(QSize(1000, 1000))
        self.img_label.setBaseSize(QSize(0, 0))
        self.img_label.setAcceptDrops(True)
        self.img_label.setToolTipDuration(2400)
        self.img_label.setStyleSheet(u"")
        self.img_label.setScaledContents(False)

        self.horizontalLayout_2.addWidget(self.img_label)


        self.horizontalLayout_4.addWidget(self.frame_img)


        self.verticalLayout_2.addWidget(self.frame_header_tabs)

        self.frame_15 = QFrame(self.centralwidget)
        self.frame_15.setObjectName(u"frame_15")
        self.frame_15.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_15.setFrameShadow(QFrame.Shadow.Raised)
        self.horizontalLayout_13 = QHBoxLayout(self.frame_15)
        self.horizontalLayout_13.setObjectName(u"horizontalLayout_13")
        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_13.addItem(self.horizontalSpacer_5)

        self.pb_first = QPushButton(self.frame_15)
        self.pb_first.setObjectName(u"pb_first")
        icon13 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipBackward))
        self.pb_first.setIcon(icon13)
        self.pb_first.setIconSize(QSize(32, 32))

        self.horizontalLayout_13.addWidget(self.pb_first)

        self.pb_previous = QPushButton(self.frame_15)
        self.pb_previous.setObjectName(u"pb_previous")
        self.pb_previous.setIcon(icon4)
        self.pb_previous.setIconSize(QSize(32, 32))

        self.horizontalLayout_13.addWidget(self.pb_previous)

        self.pb_next = QPushButton(self.frame_15)
        self.pb_next.setObjectName(u"pb_next")
        self.pb_next.setIcon(icon5)
        self.pb_next.setIconSize(QSize(32, 32))

        self.horizontalLayout_13.addWidget(self.pb_next)

        self.pb_last = QPushButton(self.frame_15)
        self.pb_last.setObjectName(u"pb_last")
        icon14 = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.MediaSkipForward))
        self.pb_last.setIcon(icon14)
        self.pb_last.setIconSize(QSize(32, 32))

        self.horizontalLayout_13.addWidget(self.pb_last)


        self.verticalLayout_2.addWidget(self.frame_15)

        MainWindowDetails.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindowDetails)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 2915, 45))
        MainWindowDetails.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindowDetails)
        self.statusbar.setObjectName(u"statusbar")
        MainWindowDetails.setStatusBar(self.statusbar)
        QWidget.setTabOrder(self.le_lenslabel, self.le_known_as)
        QWidget.setTabOrder(self.le_known_as, self.le_order_no)
        QWidget.setTabOrder(self.le_order_no, self.le_information)
        QWidget.setTabOrder(self.le_information, self.le_focallength)
        QWidget.setTabOrder(self.le_focallength, self.le_focallength_sort)
        QWidget.setTabOrder(self.le_focallength_sort, self.le_mfd)
        QWidget.setTabOrder(self.le_mfd, self.le_type_of_focus_ring)
        QWidget.setTabOrder(self.le_type_of_focus_ring, self.le_compatibility)
        QWidget.setTabOrder(self.le_compatibility, self.le_dimension)
        QWidget.setTabOrder(self.le_dimension, self.le_length_to_bayonet_flange)
        QWidget.setTabOrder(self.le_length_to_bayonet_flange, self.le_dimensions_diameter)
        QWidget.setTabOrder(self.le_dimensions_diameter, self.le_diaphragm_setting_type)
        QWidget.setTabOrder(self.le_diaphragm_setting_type, self.le_filter_type)
        QWidget.setTabOrder(self.le_filter_type, self.le_designer)
        QWidget.setTabOrder(self.le_designer, self.le_materials)
        QWidget.setTabOrder(self.le_materials, self.le_weight)
        QWidget.setTabOrder(self.le_weight, self.le_largest_reproduction)
        QWidget.setTabOrder(self.le_largest_reproduction, self.pb_first)
        QWidget.setTabOrder(self.pb_first, self.pb_previous)
        QWidget.setTabOrder(self.pb_previous, self.pb_next)
        QWidget.setTabOrder(self.pb_next, self.pb_last)
        QWidget.setTabOrder(self.pb_last, self.pb_new_lens)
        QWidget.setTabOrder(self.pb_new_lens, self.pb_save)
        QWidget.setTabOrder(self.pb_save, self.cb_mount)
        QWidget.setTabOrder(self.cb_mount, self.cb_make)
        QWidget.setTabOrder(self.cb_make, self.le_lens_mount_description)
        QWidget.setTabOrder(self.le_lens_mount_description, self.le_aperture)
        QWidget.setTabOrder(self.le_aperture, self.le_maxaperture)
        QWidget.setTabOrder(self.le_maxaperture, self.le_minaperture)
        QWidget.setTabOrder(self.le_minaperture, self.le_bayonet)
        QWidget.setTabOrder(self.le_bayonet, self.le_lens_coding)
        QWidget.setTabOrder(self.le_lens_coding, self.le_position_of_entrance_pupil)
        QWidget.setTabOrder(self.le_position_of_entrance_pupil, self.le_inscriptions)
        QWidget.setTabOrder(self.le_inscriptions, self.le_largest_diameter)
        QWidget.setTabOrder(self.le_largest_diameter, self.le_maximum_magnification)
        QWidget.setTabOrder(self.le_maximum_magnification, self.le_number_of_lenses_groups)
        QWidget.setTabOrder(self.le_number_of_lenses_groups, self.cb_r_lens_spec)
        QWidget.setTabOrder(self.cb_r_lens_spec, self.le_lensvariants)
        QWidget.setTabOrder(self.le_lensvariants, self.le_lenstype)
        QWidget.setTabOrder(self.le_lenstype, self.pb_purch_save)
        QWidget.setTabOrder(self.pb_purch_save, self.pb_purch_cancel)
        QWidget.setTabOrder(self.pb_purch_cancel, self.le_accessories)
        QWidget.setTabOrder(self.le_accessories, self.le_production_era)
        QWidget.setTabOrder(self.le_production_era, self.le_scales)
        QWidget.setTabOrder(self.le_scales, self.le_smallest_object_field)
        QWidget.setTabOrder(self.le_smallest_object_field, self.le_special_editions)
        QWidget.setTabOrder(self.le_special_editions, self.le_tech_data)
        QWidget.setTabOrder(self.le_tech_data, self.le_viewfinder)
        QWidget.setTabOrder(self.le_viewfinder, self.le_pur_purchase_date)
        QWidget.setTabOrder(self.le_pur_purchase_date, self.pb_pur_datepick)
        QWidget.setTabOrder(self.pb_pur_datepick, self.le_pur_purchase_from)
        QWidget.setTabOrder(self.le_pur_purchase_from, self.le_pur_purchase_price)
        QWidget.setTabOrder(self.le_pur_purchase_price, self.le_pur_purchase_serial_no)
        QWidget.setTabOrder(self.le_pur_purchase_serial_no, self.le_pur_purchase_lens_colour)
        QWidget.setTabOrder(self.le_pur_purchase_lens_colour, self.le_pur_purchase_lens_condition)
        QWidget.setTabOrder(self.le_pur_purchase_lens_condition, self.le_pur_purchase_comment)
        QWidget.setTabOrder(self.le_pur_purchase_comment, self.le_sale_date)
        QWidget.setTabOrder(self.le_sale_date, self.pb_sale_datepick)
        QWidget.setTabOrder(self.pb_sale_datepick, self.le_sale_to)
        QWidget.setTabOrder(self.le_sale_to, self.le_sale_price)
        QWidget.setTabOrder(self.le_sale_price, self.le_sale_serial_no)
        QWidget.setTabOrder(self.le_sale_serial_no, self.le_sale_lens_colour)
        QWidget.setTabOrder(self.le_sale_lens_colour, self.le_sale_lens_condition)
        QWidget.setTabOrder(self.le_sale_lens_condition, self.le_sale_comment)
        QWidget.setTabOrder(self.le_sale_comment, self.le_sale_datecreated)
        QWidget.setTabOrder(self.le_sale_datecreated, self.le_sale_datechanged)
        QWidget.setTabOrder(self.le_sale_datechanged, self.pb_sale_new_sale)
        QWidget.setTabOrder(self.pb_sale_new_sale, self.pb_sale_save)
        QWidget.setTabOrder(self.pb_sale_save, self.pb_sale_cancel)
        QWidget.setTabOrder(self.pb_sale_cancel, self.pb_sale_previous)
        QWidget.setTabOrder(self.pb_sale_previous, self.pb_sale_next)
        QWidget.setTabOrder(self.pb_sale_next, self.le_cla_reason)
        QWidget.setTabOrder(self.le_cla_reason, self.le_cla_recipient)
        QWidget.setTabOrder(self.le_cla_recipient, self.le_cla_serial_no)
        QWidget.setTabOrder(self.le_cla_serial_no, self.le_cla_warranty)
        QWidget.setTabOrder(self.le_cla_warranty, self.le_cla_date_shipment)
        QWidget.setTabOrder(self.le_cla_date_shipment, self.pb_cla_date_shipment)
        QWidget.setTabOrder(self.pb_cla_date_shipment, self.le_datechanged)
        QWidget.setTabOrder(self.le_datechanged, self.le_cla_eoc)
        QWidget.setTabOrder(self.le_cla_eoc, self.le_cla_actual_cost)
        QWidget.setTabOrder(self.le_cla_actual_cost, self.le_cla_date_arrival)
        QWidget.setTabOrder(self.le_cla_date_arrival, self.pb_cla_date_return)
        QWidget.setTabOrder(self.pb_cla_date_return, self.le_cla_comments)
        QWidget.setTabOrder(self.le_cla_comments, self.le_cla_datecreated)
        QWidget.setTabOrder(self.le_cla_datecreated, self.le_cla_datechanged)
        QWidget.setTabOrder(self.le_cla_datechanged, self.pb_cla_previous)
        QWidget.setTabOrder(self.pb_cla_previous, self.pb_cla_next)
        QWidget.setTabOrder(self.pb_cla_next, self.pb_cla_new)
        QWidget.setTabOrder(self.pb_cla_new, self.pb_cla_save)
        QWidget.setTabOrder(self.pb_cla_save, self.pb_cla_cancel)
        QWidget.setTabOrder(self.pb_cla_cancel, self.tbl_serial_numbers)
        QWidget.setTabOrder(self.tbl_serial_numbers, self.pb_add)
        QWidget.setTabOrder(self.pb_add, self.pb_delete)
        QWidget.setTabOrder(self.pb_delete, self.pb_save_changes)
        QWidget.setTabOrder(self.pb_save_changes, self.le_id)
        QWidget.setTabOrder(self.le_id, self.le_sale_id)
        QWidget.setTabOrder(self.le_sale_id, self.le_sale_id_lens)
        QWidget.setTabOrder(self.le_sale_id_lens, self.le_cla_id)
        QWidget.setTabOrder(self.le_cla_id, self.pushButton_4)
        QWidget.setTabOrder(self.pushButton_4, self.le_cla_id_lens)
        QWidget.setTabOrder(self.le_cla_id_lens, self.tab_all_details)
        QWidget.setTabOrder(self.tab_all_details, self.le_datecreated)
        QWidget.setTabOrder(self.le_datecreated, self.xyle_r_lens_spec_id)
        QWidget.setTabOrder(self.xyle_r_lens_spec_id, self.le_makerid)
        QWidget.setTabOrder(self.le_makerid, self.xyle_r_lens_spec)
        QWidget.setTabOrder(self.xyle_r_lens_spec, self.le_pur_datecreated)
        QWidget.setTabOrder(self.le_pur_datecreated, self.pushButton_3)
        QWidget.setTabOrder(self.pushButton_3, self.pb_pur_next)
        QWidget.setTabOrder(self.pb_pur_next, self.pb_pur_previous)
        QWidget.setTabOrder(self.pb_pur_previous, self.pb_purch_new)
        QWidget.setTabOrder(self.pb_purch_new, self.le_pur_id)
        QWidget.setTabOrder(self.le_pur_id, self.xyle_row_colour)
        QWidget.setTabOrder(self.xyle_row_colour, self.pushButton_5)
        QWidget.setTabOrder(self.pushButton_5, self.le_pur_datechanged)
        QWidget.setTabOrder(self.le_pur_datechanged, self.le_pur_id_lens)
        QWidget.setTabOrder(self.le_pur_id_lens, self.le_mountid)

        self.retranslateUi(MainWindowDetails)

        self.tab_all_details.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(MainWindowDetails)
    # setupUi

    def retranslateUi(self, MainWindowDetails):
        MainWindowDetails.setWindowTitle(QCoreApplication.translate("MainWindowDetails", u"Lens details", None))
#if QT_CONFIG(tooltip)
        self.pb_new_lens.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Add a new lens", None))
#endif // QT_CONFIG(tooltip)
        self.pb_new_lens.setText(QCoreApplication.translate("MainWindowDetails", u"Add lens", None))
#if QT_CONFIG(shortcut)
        self.pb_new_lens.setShortcut(QCoreApplication.translate("MainWindowDetails", u"Ctrl+S", None))
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        self.pb_save.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Save Master Data", None))
#endif // QT_CONFIG(tooltip)
        self.pb_save.setText(QCoreApplication.translate("MainWindowDetails", u"&Save", None))
        self.label_2.setText(QCoreApplication.translate("MainWindowDetails", u"Lens", None))
        self.le_lenslabel.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Lens description", None))
        self.label_3.setText(QCoreApplication.translate("MainWindowDetails", u"Known as", None))
        self.le_known_as.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"As known as", None))
        self.label_4.setText(QCoreApplication.translate("MainWindowDetails", u"Order No", None))
        self.le_order_no.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Order number", None))
        self.label_showID.setText(QCoreApplication.translate("MainWindowDetails", u"ID", None))
        self.le_id.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"ID", None))
        self.xyle_r_lens_spec.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"r_lens_spec", None))
        self.xyle_row_colour.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"le_row_colour", None))
        self.xyle_r_lens_spec_id.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"le_r_lens_spec_id", None))
        self.le_makerid.setText("")
        self.le_makerid.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"makerid", None))
        self.le_mountid.setText("")
        self.le_mountid.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"mountid", None))
        self.label_13.setText(QCoreApplication.translate("MainWindowDetails", u"L e n s  d a t a", None))
        self.le_information.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Notes", None))
        self.lb_date_created.setText(QCoreApplication.translate("MainWindowDetails", u"Date Created", None))
        self.lb_date_changed.setText(QCoreApplication.translate("MainWindowDetails", u"Last Change", None))
#if QT_CONFIG(accessibility)
        self.tab_all_details.setAccessibleName(QCoreApplication.translate("MainWindowDetails", u"<html><head/><body><p>All about ...</p></body></html>", None))
#endif // QT_CONFIG(accessibility)
        self.label_33.setText(QCoreApplication.translate("MainWindowDetails", u"Focus", None))
        self.label_18.setText(QCoreApplication.translate("MainWindowDetails", u"Focal throw", None))
        self.label_27.setText(QCoreApplication.translate("MainWindowDetails", u"Focal length (Text)          ", None))
        self.label_30.setText(QCoreApplication.translate("MainWindowDetails", u"Min focal distance", None))
        self.label_29.setText(QCoreApplication.translate("MainWindowDetails", u"Focal length (actual)          ", None))
        self.le_focallength.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 50mm", None))
#if QT_CONFIG(tooltip)
        self.le_type_of_focus_ring.setToolTip(QCoreApplication.translate("MainWindowDetails", u"A \"focus ring\" is a visual cue, often a line or outline, that highlights the currently selected element on a webpage or interface. It's essential for users, especially those relying on keyboards or assistive technologies, to visually track where the focus is", None))
#endif // QT_CONFIG(tooltip)
        self.le_type_of_focus_ring.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. Tab or Stick", None))
#if QT_CONFIG(tooltip)
        self.le_mfd.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Minimum focus distance is the closest distance a lens can focus on a subject. It's also known as the closest focusing distance", None))
#endif // QT_CONFIG(tooltip)
        self.le_mfd.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 0.7m", None))
        self.label_32.setText(QCoreApplication.translate("MainWindowDetails", u"Type of focus ring", None))
        self.label_28.setText(QCoreApplication.translate("MainWindowDetails", u"Focus in mm", None))
        self.label_31.setText(QCoreApplication.translate("MainWindowDetails", u"Focusing range", None))
        self.le_focallength_sort.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 50 (number only)", None))
#if QT_CONFIG(tooltip)
        self.le_aperture1_kannweg.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Aperture is typically expressed as an f-number or f-stop, like f/1.4, f/2.8, or f/8. A smaller f-number corresponds to a larger aperture opening, letting in more light and creating a shallow depth of field (blurred background). Conversely, a larger f-number corresponds to a smaller aperture, letting in less light and creating a deeper depth of field (more of the scene in focus). \n"
"", None))
#endif // QT_CONFIG(tooltip)
        self.le_aperture1_kannweg.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 52mm", None))
#if QT_CONFIG(tooltip)
        self.le_focusing_range.setToolTip(QCoreApplication.translate("MainWindowDetails", u"A lens's focusing range refers to the distance between the camera's sensor and the subject that the lens can focus on to produce a sharp image. This range is defined by the minimum focusing distance (MFD) and the ability to focus at infinity. The MFD is the closest distance a lens can focus on, and beyond that, a subject can be focused at any distance. \n"
"", None))
#endif // QT_CONFIG(tooltip)
        self.le_focusing_range.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Distance between the sensor ...", None))
#if QT_CONFIG(tooltip)
        self.le_focus_throw.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Focus throw is measured in degrees and represents the amount of rotation needed to turn a lens\u2019 focus ring from its MFD (minimum focus distance) to infinity. ", None))
#endif // QT_CONFIG(tooltip)
        self.le_focus_throw.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Amount of rotation in degrees", None))
        self.label_82.setText(QCoreApplication.translate("MainWindowDetails", u"Dimension", None))
        self.le_dimension.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. Length - ca. 43 /55 mm (w/ w/o Lens hood)", None))
        self.label_81.setText(QCoreApplication.translate("MainWindowDetails", u"Length to bayonet flange", None))
#if QT_CONFIG(tooltip)
        self.le_length_to_bayonet_flange.setToolTip(QCoreApplication.translate("MainWindowDetails", u"For an interchangeable lens camera, the flange focal distance (FFD) (also known as the flange-to-film distance, flange focal depth, flange back distance (FBD), flange focal length (FFL), back focus[1] or register, depending on the usage and source) of a lens mount system is the distance from the mounting flange (the interlocking metal rings on the camera and the rear of the lens) to the film or image sensor plane. This value is different for different camera systems. The range of this distance, which will render an image clearly in focus within all focal lengths, is usually measured to a precision of hundredths of millimetres, and is not to be confused with depth of field. ", None))
#endif // QT_CONFIG(tooltip)
        self.le_length_to_bayonet_flange.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Distance from the mounting flange to the film or image sensor plane", None))
        self.label_22.setText(QCoreApplication.translate("MainWindowDetails", u"Diameter dimensions", None))
#if QT_CONFIG(tooltip)
        self.le_dimensions_diameter.setToolTip(QCoreApplication.translate("MainWindowDetails", u"The lens diameter refers to the edge-to-edge measurement of a lens, typically measured in millimeters (mm). It's a crucial dimension for contact lenses, ensuring proper fit and comfort, and for other lenses, it can influence aspects like image quality and the size of the filter threads.", None))
#endif // QT_CONFIG(tooltip)
        self.le_dimensions_diameter.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Typical Range: Soft contact lenses commonly have diameters between 13.80 and 14.50 mm", None))
        self.label_77.setText(QCoreApplication.translate("MainWindowDetails", u"Diaphragm setting type", None))
#if QT_CONFIG(tooltip)
        self.le_diaphragm_setting_type.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Lens diaphragm settings, or aperture settings, are typically denoted by f-stops, such as f/2, f/2.8, f/4, etc. A smaller f-stop number indicates a wider aperture (allowing more light in) and vice versa. These settings control the amount of light entering the camera and also affect the depth of field (the area of the image that is in focus)", None))
#endif // QT_CONFIG(tooltip)
        self.le_diaphragm_setting_type.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"...", None))
        self.label_80.setText(QCoreApplication.translate("MainWindowDetails", u"Filter type", None))
#if QT_CONFIG(tooltip)
        self.le_filter_type.setToolTip(QCoreApplication.translate("MainWindowDetails", u"The four primary types of filters include the low-pass filter, the high-pass filter, the band-pass filter, and the notch filter (or the band-reject or band-stop filter)", None))
#endif // QT_CONFIG(tooltip)
        self.le_filter_type.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"One of the four primary type of filters ...", None))
        self.label_79.setText(QCoreApplication.translate("MainWindowDetails", u"Designer", None))
        self.le_designer.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. Wilhelm Oskar Barnack", None))
        self.label_78.setText(QCoreApplication.translate("MainWindowDetails", u"Materials", None))
#if QT_CONFIG(tooltip)
        self.le_materials.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Lens materials include glass, plastic (CR-39), polycarbonate, and Trivex. Glass is traditional, while plastic offers lightness and impact resistance. Polycarbonate is known for its durability and impact resistance, and Trivex provides high optical clarity", None))
#endif // QT_CONFIG(tooltip)
        self.le_materials.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. Glass, plastic (CR-39), polycarbonate, and Trivex ...", None))
        self.label_76.setText(QCoreApplication.translate("MainWindowDetails", u"Reproduction, largest", None))
#if QT_CONFIG(tooltip)
        self.le_largest_reproduction.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Reproduction Ratio:\n"
"This refers to the ratio of the size of the object on the image sensor to the actual size of the object. A higher reproduction ratio means the object is photographed at a larger size.", None))
#endif // QT_CONFIG(tooltip)
        self.le_largest_reproduction.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 1:1 (1x)", None))
#if QT_CONFIG(tooltip)
        self.le_weight.setToolTip(QCoreApplication.translate("MainWindowDetails", u"The weight of a lens can vary greatly depending on the type of lens (e.g., contact lens, eyeglasses, camera lens). Contact lenses are very light, typically around 16 grams. Eyeglass lenses can range in weight from 20 to 40 grams, with thinner, lighter lenses being an option. Camera lenses can be significantly heavier, with some modern lenses weighing over 650 grams", None))
#endif // QT_CONFIG(tooltip)
        self.le_weight.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Weight in grams or lb", None))
        self.label_26.setText(QCoreApplication.translate("MainWindowDetails", u"Weight", None))
        self.label_23.setText(QCoreApplication.translate("MainWindowDetails", u"Compatibility", None))
        self.le_compatibility.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Lenses are compatible with these cameras", None))
        self.label_83.setText(QCoreApplication.translate("MainWindowDetails", u"Overview", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_overview), QCoreApplication.translate("MainWindowDetails", u"Overview", None))
        self.label_37.setText(QCoreApplication.translate("MainWindowDetails", u"Geometry", None))
        self.lineEdit.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"No of blades", None))
        self.le_maxaperture.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 2.0", None))
        self.label_14.setText(QCoreApplication.translate("MainWindowDetails", u"Angle of view", None))
        self.label_41.setText(QCoreApplication.translate("MainWindowDetails", u"Type / Optical formulae", None))
        self.label_19.setText(QCoreApplication.translate("MainWindowDetails", u"Diameter, largest", None))
        self.label_25.setText(QCoreApplication.translate("MainWindowDetails", u"Max aperture", None))
        self.label_9.setText(QCoreApplication.translate("MainWindowDetails", u"Coding", None))
        self.le_minaperture.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. 16.0", None))
        self.label_11.setText(QCoreApplication.translate("MainWindowDetails", u"Inscriptions", None))
        self.label_21.setText(QCoreApplication.translate("MainWindowDetails", u"Mount description", None))
        self.label_39.setText(QCoreApplication.translate("MainWindowDetails", u"R lens spec", None))
        self.label_10.setText(QCoreApplication.translate("MainWindowDetails", u"Pos. of entrance pupil", None))
        self.label_24.setText(QCoreApplication.translate("MainWindowDetails", u"No of lenses/groups", None))
        self.label_7.setText(QCoreApplication.translate("MainWindowDetails", u"Aperture (text)", None))
        self.le_aperture.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. f/1.4 - f/22", None))
        self.label_35.setText(QCoreApplication.translate("MainWindowDetails", u"Mount", None))
        self.label_36.setText(QCoreApplication.translate("MainWindowDetails", u"Lens make", None))
        self.label_15.setText(QCoreApplication.translate("MainWindowDetails", u"Blades", None))
        self.label_20.setText(QCoreApplication.translate("MainWindowDetails", u"Magnification, max", None))
        self.label_17.setText(QCoreApplication.translate("MainWindowDetails", u"Min", None))
        self.label_40.setText(QCoreApplication.translate("MainWindowDetails", u"Variants", None))
        self.label_8.setText(QCoreApplication.translate("MainWindowDetails", u"Bayonet", None))
        self.label_5.setText(QCoreApplication.translate("MainWindowDetails", u"T-Stop", None))
        self.label_16.setText(QCoreApplication.translate("MainWindowDetails", u"No of blades", None))
#if QT_CONFIG(tooltip)
        self.le_t_stop.setToolTip(QCoreApplication.translate("MainWindowDetails", u"The actual amount of light that passes through the lens and reaches the film or sensor in a camera.", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.le_t_stop.setStatusTip(QCoreApplication.translate("MainWindowDetails", u"The actual amount of light that passes through the lens and reaches the film or sensor in a camera.", None))
#endif // QT_CONFIG(statustip)
        self.le_t_stop.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"e.g. T2.2", None))
        self.pushButton_3.setText(QCoreApplication.translate("MainWindowDetails", u"PushButton - reserved for future functionality", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_focal), QCoreApplication.translate("MainWindowDetails", u"Geometry", None))
        self.label_6.setText(QCoreApplication.translate("MainWindowDetails", u"Miscellaneous", None))
        self.label_34.setText(QCoreApplication.translate("MainWindowDetails", u"Accessories", None))
        self.label_42.setText(QCoreApplication.translate("MainWindowDetails", u"Production era", None))
        self.label_43.setText(QCoreApplication.translate("MainWindowDetails", u"Scales", None))
        self.label_44.setText(QCoreApplication.translate("MainWindowDetails", u"Smallest object field", None))
        self.label_45.setText(QCoreApplication.translate("MainWindowDetails", u"Special editions", None))
        self.label_46.setText(QCoreApplication.translate("MainWindowDetails", u"Technical data", None))
        self.label_47.setText(QCoreApplication.translate("MainWindowDetails", u"Viewfinder", None))
        self.pushButton_4.setText(QCoreApplication.translate("MainWindowDetails", u"PushButton", None))
        self.pushButton_5.setText(QCoreApplication.translate("MainWindowDetails", u"PushButton", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_misc), QCoreApplication.translate("MainWindowDetails", u"Misc", None))
        self.lb_purchases.setText(QCoreApplication.translate("MainWindowDetails", u"Purchases", None))
        self.label_50.setText(QCoreApplication.translate("MainWindowDetails", u"Dealer", None))
        self.le_pur_purchase_date.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"YYYY-MM-DD", None))
        self.le_pur_purchase_from.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Deler or shop", None))
        self.label_52.setText(QCoreApplication.translate("MainWindowDetails", u"  Lens colour", None))
#if QT_CONFIG(tooltip)
        self.pb_pur_datepick.setToolTip(QCoreApplication.translate("MainWindowDetails", u"<html><head/><body><p>Get date by date picker</p></body></html>", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.pb_pur_datepick.setStatusTip(QCoreApplication.translate("MainWindowDetails", u"Comfortable selection of purchase date", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.pb_pur_datepick.setWhatsThis(QCoreApplication.translate("MainWindowDetails", u"Comfortable selection of purchase date", None))
#endif // QT_CONFIG(whatsthis)
        self.pb_pur_datepick.setText("")
        self.le_pur_purchase_comment.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Other information", None))
        self.le_pur_purchase_serial_no.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Serial number", None))
        self.label_54.setText(QCoreApplication.translate("MainWindowDetails", u"Comments", None))
        self.label_53.setText(QCoreApplication.translate("MainWindowDetails", u"Condition on\n"
"purchase", None))
        self.label_51.setText(QCoreApplication.translate("MainWindowDetails", u"  Serial no", None))
        self.label_48.setText(QCoreApplication.translate("MainWindowDetails", u"Date of purchase", None))
        self.le_pur_purchase_lens_colour.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"E.g. chrome or black", None))
        self.le_pur_purchase_lens_condition.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"Describe the condition, flaws etc", None))
        self.label_49.setText(QCoreApplication.translate("MainWindowDetails", u"Price tag", None))
        self.le_pur_purchase_price.setPlaceholderText(QCoreApplication.translate("MainWindowDetails", u"US$ / \u20ac or any other currency", None))
#if QT_CONFIG(tooltip)
        self.pb_pur_previous.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Previous purchase record ", None))
#endif // QT_CONFIG(tooltip)
        self.pb_pur_previous.setText(QCoreApplication.translate("MainWindowDetails", u"Previous", None))
#if QT_CONFIG(tooltip)
        self.pb_pur_next.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Next purchase record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_pur_next.setText(QCoreApplication.translate("MainWindowDetails", u"Next", None))
#if QT_CONFIG(tooltip)
        self.pb_purch_new.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Add a lens you purchased", None))
#endif // QT_CONFIG(tooltip)
        self.pb_purch_new.setText(QCoreApplication.translate("MainWindowDetails", u"  New purchase    ", None))
#if QT_CONFIG(shortcut)
        self.pb_purch_new.setShortcut(QCoreApplication.translate("MainWindowDetails", u"Ctrl+S", None))
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        self.pb_purch_save.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Save changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_purch_save.setText(QCoreApplication.translate("MainWindowDetails", u"   &Save   ", None))
#if QT_CONFIG(tooltip)
        self.pb_purch_cancel.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Revert changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_purch_cancel.setText(QCoreApplication.translate("MainWindowDetails", u"Cancel", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_purchase), QCoreApplication.translate("MainWindowDetails", u"Purchase", None))
        self.label_55.setText(QCoreApplication.translate("MainWindowDetails", u"Sold", None))
        self.label_56.setText(QCoreApplication.translate("MainWindowDetails", u"Date of sale", None))
        self.label_64.setText(QCoreApplication.translate("MainWindowDetails", u"Last change", None))
        self.pb_sale_datepick.setText("")
        self.label_62.setText(QCoreApplication.translate("MainWindowDetails", u"Condition", None))
        self.label_59.setText(QCoreApplication.translate("MainWindowDetails", u"Serial no", None))
        self.label_61.setText(QCoreApplication.translate("MainWindowDetails", u"Comment", None))
        self.label_57.setText(QCoreApplication.translate("MainWindowDetails", u"Buyer", None))
        self.label_60.setText(QCoreApplication.translate("MainWindowDetails", u"Lens colour", None))
        self.label_63.setText(QCoreApplication.translate("MainWindowDetails", u"Date created", None))
        self.label_58.setText(QCoreApplication.translate("MainWindowDetails", u"Price tag", None))
#if QT_CONFIG(tooltip)
        self.pb_sale_previous.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Previous sale record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_sale_previous.setText(QCoreApplication.translate("MainWindowDetails", u"Previous", None))
#if QT_CONFIG(tooltip)
        self.pb_sale_next.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Next sale record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_sale_next.setText(QCoreApplication.translate("MainWindowDetails", u"Next", None))
#if QT_CONFIG(tooltip)
        self.pb_sale_new_sale.setToolTip(QCoreApplication.translate("MainWindowDetails", u"<html><head/><body><p>Add a record about a lens sale</p></body></html>", None))
#endif // QT_CONFIG(tooltip)
        self.pb_sale_new_sale.setText(QCoreApplication.translate("MainWindowDetails", u"New sale", None))
#if QT_CONFIG(tooltip)
        self.pb_sale_save.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Save changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_sale_save.setText(QCoreApplication.translate("MainWindowDetails", u"Save", None))
#if QT_CONFIG(tooltip)
        self.pb_sale_cancel.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Revert all changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_sale_cancel.setText(QCoreApplication.translate("MainWindowDetails", u"Cancel", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_sold), QCoreApplication.translate("MainWindowDetails", u"Sold", None))
        self.label_65.setText(QCoreApplication.translate("MainWindowDetails", u"Clean, Lubricant, Adjust", None))
        self.label_74.setText(QCoreApplication.translate("MainWindowDetails", u"Date created", None))
        self.pb_cla_date_return.setText("")
        self.label_69.setText(QCoreApplication.translate("MainWindowDetails", u"Date of shipment", None))
        self.label_67.setText(QCoreApplication.translate("MainWindowDetails", u"To / Recipient ", None))
        self.le_cla_warranty.setText("")
        self.label_70.setText(QCoreApplication.translate("MainWindowDetails", u"Estimation of cost", None))
        self.label_73.setText(QCoreApplication.translate("MainWindowDetails", u"Comments", None))
        self.label_71.setText(QCoreApplication.translate("MainWindowDetails", u"Actual costs", None))
        self.label_68.setText(QCoreApplication.translate("MainWindowDetails", u"S/N", None))
        self.label_72.setText(QCoreApplication.translate("MainWindowDetails", u"Return date", None))
        self.pb_cla_date_shipment.setText("")
        self.label_66.setText(QCoreApplication.translate("MainWindowDetails", u"Reason ", None))
#if QT_CONFIG(tooltip)
        self.pb_cla_previous.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Previous CLA record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_cla_previous.setText(QCoreApplication.translate("MainWindowDetails", u"Previous", None))
#if QT_CONFIG(tooltip)
        self.pb_cla_next.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Next CLA record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_cla_next.setText(QCoreApplication.translate("MainWindowDetails", u"Next", None))
#if QT_CONFIG(tooltip)
        self.pb_cla_new.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Add a new CLA record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_cla_new.setText(QCoreApplication.translate("MainWindowDetails", u"New CLA", None))
#if QT_CONFIG(tooltip)
        self.pb_cla_save.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Save changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_cla_save.setText(QCoreApplication.translate("MainWindowDetails", u"Save", None))
#if QT_CONFIG(tooltip)
        self.pb_cla_cancel.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Revert all changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_cla_cancel.setText(QCoreApplication.translate("MainWindowDetails", u"Cancel", None))
        self.label_75.setText(QCoreApplication.translate("MainWindowDetails", u"Last change", None))
        self.label_12.setText(QCoreApplication.translate("MainWindowDetails", u"Warranty", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_cla), QCoreApplication.translate("MainWindowDetails", u"CLA", None))
        self.label.setText(QCoreApplication.translate("MainWindowDetails", u"Serial numbers", None))
#if QT_CONFIG(tooltip)
        self.pb_add.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Add new serial numbers", None))
#endif // QT_CONFIG(tooltip)
        self.pb_add.setText(QCoreApplication.translate("MainWindowDetails", u"Add", None))
#if QT_CONFIG(tooltip)
        self.pb_delete.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Delete current record", None))
#endif // QT_CONFIG(tooltip)
        self.pb_delete.setText(QCoreApplication.translate("MainWindowDetails", u"Delete", None))
#if QT_CONFIG(tooltip)
        self.pb_save_changes.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Save changes", None))
#endif // QT_CONFIG(tooltip)
        self.pb_save_changes.setText(QCoreApplication.translate("MainWindowDetails", u"Save", None))
        self.tab_all_details.setTabText(self.tab_all_details.indexOf(self.tb_sn), QCoreApplication.translate("MainWindowDetails", u"S/N", None))
#if QT_CONFIG(tooltip)
        self.img_label.setToolTip(QCoreApplication.translate("MainWindowDetails", u"Drag JPG image here", None))
#endif // QT_CONFIG(tooltip)
        self.img_label.setText("")
        self.pb_first.setText(QCoreApplication.translate("MainWindowDetails", u"    &First    ", None))
        self.pb_previous.setText(QCoreApplication.translate("MainWindowDetails", u"  &Previous  ", None))
        self.pb_next.setText(QCoreApplication.translate("MainWindowDetails", u"    &Next    ", None))
        self.pb_last.setText(QCoreApplication.translate("MainWindowDetails", u"    &Last    ", None))
    # retranslateUi

