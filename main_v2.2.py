# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'v2.2.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

# model utilities
from backend import utils_v2 as utils
import tensorflow as tf
import numpy as np

# plot utilities
import matplotlib.pyplot as plt
import matplotlib
matplotlib.use("Qt5Agg")
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(902, 717)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("BRIN resized.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        MainWindow.setWindowIcon(icon)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.gridLayout_2 = QtWidgets.QGridLayout()
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.plotSpace = QtWidgets.QVBoxLayout()
        self.plotSpace.setObjectName("plotSpace")
        self.gridLayout_2.addLayout(self.plotSpace, 1, 1, 1, 1)
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setContentsMargins(0, -1, 279, -1)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.logo_brin = QtWidgets.QLabel(self.centralwidget)
        self.logo_brin.setEnabled(True)
        self.logo_brin.setText("")
        self.logo_brin.setPixmap(QtGui.QPixmap("BRIN resized.png"))
        self.logo_brin.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignVCenter)
        self.logo_brin.setObjectName("logo_brin")
        self.horizontalLayout.addWidget(self.logo_brin)
        self.judul = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.judul.setFont(font)
        self.judul.setContextMenuPolicy(QtCore.Qt.NoContextMenu)
        self.judul.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignVCenter)
        self.judul.setObjectName("judul")
        self.horizontalLayout.addWidget(self.judul)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
        self.groupBox.setObjectName("groupBox")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.groupBox)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.Data = QtWidgets.QLabel(self.groupBox)
        self.Data.setTextFormat(QtCore.Qt.MarkdownText)
        self.Data.setObjectName("Data")
        self.gridLayout.addWidget(self.Data, 0, 0, 1, 1)
        self.boxData = QtWidgets.QComboBox(self.groupBox)
        self.boxData.setObjectName("boxData")
        self.gridLayout.addWidget(self.boxData, 0, 1, 1, 1)
        self.Feature = QtWidgets.QLabel(self.groupBox)
        self.Feature.setObjectName("Feature")
        self.gridLayout.addWidget(self.Feature, 0, 2, 1, 1)
        self.boxFeature = QtWidgets.QComboBox(self.groupBox)
        self.boxFeature.setObjectName("boxFeature")
        self.gridLayout.addWidget(self.boxFeature, 0, 3, 1, 1)
        self.Model = QtWidgets.QLabel(self.groupBox)
        self.Model.setObjectName("Model")
        self.gridLayout.addWidget(self.Model, 0, 4, 1, 1)
        self.boxModel = QtWidgets.QComboBox(self.groupBox)
        self.boxModel.setObjectName("boxModel")
        self.gridLayout.addWidget(self.boxModel, 0, 5, 1, 1)
        self.predictButton = QtWidgets.QPushButton(self.groupBox)
        self.predictButton.setObjectName("predictButton")
        self.gridLayout.addWidget(self.predictButton, 1, 0, 1, 6)
        self.gridLayout_3.addLayout(self.gridLayout, 0, 1, 1, 1)
        self.verticalLayout.addWidget(self.groupBox)
        self.gridLayout_2.addLayout(self.verticalLayout, 0, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(1208, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout_2.addItem(spacerItem, 2, 1, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(0, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_2.addItem(spacerItem1, 1, 0, 1, 1)
        self.gridLayout_4.addLayout(self.gridLayout_2, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        """ What Button Do """

        # List Data Battery
        self.dataBattery = ["None", "B05", "B06", "B07", "B18"]
        self.boxData.addItems(self.dataBattery)
        self.boxData.currentIndexChanged["QString"].connect(self.getData)

        # List Feature
        self.feature = ["None", "C + V", "C + VIT"]
        self.boxFeature.addItems(self.feature)
        self.boxFeature.currentIndexChanged["QString"].connect(self.getFeature)

        # List Model
        self.model = ["None", "LSTM", "Hybrid"]
        self.boxModel.addItems(self.model)
        self.boxModel.currentIndexChanged["QString"].connect(self.getModel)

        # Jika tombol predict diklik
        self.predictButton.clicked.connect(self.predict)


    def getData(self, value):
        try:
            print("Data battery: ", value)
            global data
            dataDict = {
                "B05": 0,
                "B06": 1,
                "B07": 2,
                "B18": 3,
            }
            data = dataDict[value]
            print(data)
            return data
        except Exception as e:
            print("Gagal memilih data")

    def getFeature(self, value):
        try:
            print("Feature: ", value)
            global feature
            featureDict = {
                "C + V": 0,
                "C + VIT": 1
            }
            feature = featureDict[value]
            print(feature)
            return feature
        except Exception as e:
            print("Gagal memilih feature")

    def getModel(self, value):
        try:
            print("Model: ", value)
            global model
            modelDict = {
                "LSTM": 0,
                "Hybrid": 1
            }
            model = modelDict[value]
            print(model)
            return model
        except Exception as e:
            print("Gagal memilih model")

    def plot(self):
        pass

    def predict(self):
        pass

        # try:
        #     dataPath = "backend/data/NASA/"
        #     x_test, y_test = utils.getData(dataPath)
        #     print("Berhasil load data")



    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Battery System Prediction"))
        self.judul.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt; font-weight:600;\">Battery System Prediction</span></p></body></html>"))
        self.groupBox.setTitle(_translate("MainWindow", "Parameters"))
        self.Data.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:9pt;\">Data</span></p></body></html>"))
        self.Feature.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:10pt;\">Feature</span></p></body></html>"))
        self.Model.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:10pt;\">Model AI</span></p></body></html>"))
        self.predictButton.setText(_translate("MainWindow", "PREDICT"))

if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

