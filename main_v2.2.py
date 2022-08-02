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
import matplotlib.gridspec as gridspec
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
        self.feature = ["None", "C + V", "C + VIT", "C"]
        self.boxFeature.addItems(self.feature)
        self.boxFeature.currentIndexChanged["QString"].connect(self.getFeature)

        # List Model
        self.model = ["None", "LSTM", "Hybrid"]
        self.boxModel.addItems(self.model)
        self.boxModel.currentIndexChanged["QString"].connect(self.getModel)

        # Jika tombol predict diklik
        self.predictButton.clicked.connect(self.predict)

        # plotting
        self.fig = plt.figure()
        self.canvas = FigureCanvasQTAgg(self.fig)

        self.plotSpace.addWidget(self.canvas)


    def getData(self, value):
        try:
            print("Data battery: ", value)
            dataDict = {
                "B05": 0,
                "B06": 1,
                "B07": 2,
                "B18": 3,
            }
            self.data = dataDict[value]
            print(self.data)
            return self.data
        except Exception as e:
            print("Gagal memilih data")

    def getFeature(self, value):
        try:
            print("Feature: ", value)
            featureDict = {
                "C + V": 0,
                "C + VIT": 1,
                "C": 2
            }
            self.feature = featureDict[value]
            print(self.feature)
            return self.feature
        except Exception as e:
            print("Gagal memilih feature")

    def getModel(self, value):
        try:
            print("Model: ", value)
            modelDict = {
                "LSTM": 0,
                "Hybrid": 1
            }
            self.model = modelDict[value]
            print(self.model)
            return self.model
        except Exception as e:
            print("Gagal memilih model")

    def plot(self):
        self.fig.clear()
        threshold = np.zeros((len(self.inv_pred)))
        threshold.fill(1.4)
        t = threshold

        if self.data == 3 or self.feature == 2:
            intersection = np.argwhere(np.diff(np.sign(t - self.pred_flat))).flatten()
        elif self.data == 0:
            intersection = np.argwhere(np.isclose(t, self.pred_flat, rtol=0.001, atol=0.001)).flatten()
        elif self.data == 3 and self.model == 1 and self.feature == 0:
            intersection = np.argwhere(np.diff(np.sign(t - self.pred_flat))).flatten()
            intersection = intersection + 1
        else:
            intersection = np.argwhere(np.diff(np.sign(t - self.pred_flat))).flatten()

        try:
            gs = gridspec.GridSpec(1, 2, width_ratios=[8, 1])
            self.ax1 = self.fig.add_subplot(gs[0])
            self.ax2 = self.fig.add_subplot(gs[1])

            self.ax1.plot(self.X[60:81], self.pred_flat[60:81], linewidth=2, color='k')
            self.ax1.plot(self.X[80:intersection[-1] + 1], self.pred_flat[80:intersection[-1] + 1], linewidth=2, color='b')
            self.ax1.plot(self.X[intersection[-1]:], self.pred_flat[intersection[-1]:], linewidth=2, color='b', ls=':')

            self.ax1.axvline(x=80, color='g', ls='--', label="Starting Point")
            self.ax1.axvline(intersection[-1], color='m', ls='--', label="End of Life")

            self.ax1.axhline(y=1.4, color='r', ls='-.', label="Failure Threshold")

            self.ax1.set_ylabel("Capacity (Ah)", fontsize=12)
            self.ax1.set_xlabel("Cycles", fontsize=12)

            # ax2 = fig.add_subplot(122)
            self.ax2.bar(['Remaining Cycle'], [intersection[-1] - 80], color='g')
            self.ax2.set_yticks(np.arange(0, max(self.X), 10));

            text = f"RUL = {intersection[-1] - 80} cycles"

            # jika pakai legend
            self.ax1.legend()

            if self.data == 0:
                if self.feature == 2:
                    plt.gcf().text(0.34, 0.7, text, fontsize=12)
                else:
                    plt.gcf().text(0.3, 0.7, text, fontsize=12)

            elif self.data == 1:
                if self.feature == 2:
                    plt.gcf().text(0.26, 0.88, text, fontsize=12)
                elif self.model == 0 and self.feature == 0:
                    plt.gcf().text(0.25, 0.83, text, fontsize=12)
                elif self.model == 1 and self.feature == 1:
                    plt.gcf().text(0.28, 0.83, text, fontsize=12)
                elif self.model == 0 and self.feature == 1:
                    plt.gcf().text(0.45, 0.83, text, fontsize=12)
                else:
                    plt.gcf().text(0.3, 0.83, text, fontsize=12)

            elif self.data == 3:
                if self.model == 0 and self.feature == 0:
                    plt.gcf().text(0.45, 0.83, text, fontsize=12)
                elif self.model == 1 and self.feature == 1:
                    plt.gcf().text(0.45, 0.83, text, fontsize=12)
                else:
                    plt.gcf().text(0.37, 0.83, text, fontsize=12)

        except Exception as e:
            self.ax1.plot(self.X, self.pred_flat, linewidth=2, color='k', label="Prediction")
            self.ax1.axhline(y=1.4, color='r', ls='-.', label="Failure Threshold")
            self.ax1.set_yticks(np.arange(1.4, max(self.pred_flat), 0.15));
            self.ax2.set_yticks(np.arange(0, max(self.X), 10));
            self.ax2.set_xticks([1]);
            self.ax1.set_ylabel("Capacity (Ah)", fontsize=12)
            self.ax1.set_xlabel("Cycles", fontsize=12)
            self.ax2.set_xlabel("Remaining cycles", fontsize=12)
            self.ax1.legend()

        self.fig.tight_layout()
        self.canvas.draw_idle()

    def predict(self):
        try:
            dataPath = "backend/data/NASA/"
            x_test, y_test = utils.getData(dataPath)
            print("Berhasil load data")

            if self.feature == 2 and self.model == 0:
                testX, testY, SS = utils.extract_VIT_capacity([x_test[self.data]], [y_test[self.data]], 5, 1,
                                                              10,
                                                              self.feature, self.model, c_only=True)
                C_LSTM_model = tf.keras.models.load_model(
                    "backend/model_from_colab/SC/C_LSTM/C_LSTM_5_B05_k1/saved_model_and_weight/")
                C_LSTM_pred = C_LSTM_model.predict(testX)
                self.inv_pred = SS.inverse_transform(C_LSTM_pred)
                self.pred = self.inv_pred.reshape(self.inv_pred.shape[0])
                self.X = range(len(self.inv_pred))
                self.pred_flat = self.inv_pred.flatten()
                self.plot()

            elif self.feature == 0:
                if self.model == 0:
                    testX, testY, SS = utils.extract_VIT_capacity([x_test[self.data]], [y_test[self.data]], 5, 1,
                                                                  10,
                                                                  self.feature, self.model)
                    SC_LSTM_model = tf.keras.models.load_model(
                        "backend/model_from_colab/SC/LSTM/SC_LSTM_5_B18_k2/saved_model_and_weight/")
                    SC_LSTM_pred = SC_LSTM_model.predict(testX)
                    self.inv_pred = SS.inverse_transform(SC_LSTM_pred)
                    self.pred = self.inv_pred.reshape(self.inv_pred.shape[0])
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()

                elif self.model == 1:
                    testX_SC_h_LSTM, testY_SC_h_LSTM, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                      [y_test[self.data]], 5, 1, 10,
                                                                                      self.feature,
                                                                                      self.model, c=True)
                    testX_SC_h_CNN, testY_SC_h_CNN, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                    [y_test[self.data]], 5, 1, 10,
                                                                                    self.feature, self.model)
                    SC_hybrid_model = tf.keras.models.load_model(
                        "backend/model_from_colab/SC/hybrid/SC-CNN-LSTM_5_B07_k2/saved_model_and_weight/")
                    SC_hybrid_pred = SC_hybrid_model.predict([testX_SC_h_LSTM, testX_SC_h_CNN])
                    self.inv_pred = SS.inverse_transform(SC_hybrid_pred)
                    self.pred = self.inv_pred.reshape(self.inv_pred.shape[0])
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()
                print("Berhasil load model dan transform data")
                self.plot()

            elif self.feature == 1:
                if self.model == 0:
                    testX, testY, SS = utils.extract_VIT_capacity([x_test[self.data]], [y_test[self.data]], 5, 1,
                                                                  10,
                                                                  self.feature, self.model)
                    MC_LSTM_model = tf.keras.models.load_model(
                        "backend/model_from_colab/MC/LSTM/MC_LSTM_5_B06_k2/saved_model_and_weight/")
                    MC_LSTM_pred = MC_LSTM_model.predict(testX)
                    self.inv_pred = SS.inverse_transform(MC_LSTM_pred)
                    self.pred = self.inv_pred.reshape(self.inv_pred.shape[0])
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()

                elif self.model == 1:
                    testX_MC_h_LSTM, testY_MC_h_LSTM, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                      [y_test[self.data]], 5, 1, 10,
                                                                                      self.feature,
                                                                                      self.model, c=True)
                    testX_MC_h_V_CNN, testY_MC_h_V_CNN, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                        [y_test[self.data]], 5, 1, 10,
                                                                                        self.feature,
                                                                                        self.model, v=True)
                    testX_MC_h_I_CNN, testY_MC_h_I_CNN, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                        [y_test[self.data]], 5, 1, 10,
                                                                                        self.feature,
                                                                                        self.model, II=True)
                    testX_MC_h_T_CNN, testY_MC_h_T_CNN, SS = utils.extract_VIT_capacity([x_test[self.data]],
                                                                                        [y_test[self.data]], 5, 1, 10,
                                                                                        self.feature,
                                                                                        self.model, t=True)
                    MC_hybrid_model = tf.keras.models.load_model(
                        "backend/model_from_colab/MC/hybrid/SCNN+LSTM_5_B07_k3/saved_model_and_weight/")
                    MC_hybrid_pred = MC_hybrid_model.predict(
                        [testX_MC_h_LSTM, testX_MC_h_V_CNN, testX_MC_h_I_CNN, testX_MC_h_T_CNN])
                    self.inv_pred = SS.inverse_transform(MC_hybrid_pred)
                    self.pred = self.inv_pred.reshape(self.inv_pred.shape[0])
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()
                print("Berhasil load model dan transform data")
                self.plot()

            elif self.feature == 2 and self.model != 0:
                self.plot()
                self.fig.clear()
                plt.gcf().text(0.3, 0.5, "Silahkan pilih model AI yang lain", fontsize=12)


            print("Berhasil plot")

        except Exception as e:

            print("Gagal Memprediksi")


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

