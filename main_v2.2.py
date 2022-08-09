# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'v2.4.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

# PyQt utilities
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
        MainWindow.resize(1280, 780)
        # setting icon ==========
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("backend/BRIN_edge.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        MainWindow.setWindowIcon(icon)
        # =======================
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.gridLayout_2 = QtWidgets.QGridLayout()
        self.gridLayout_2.setObjectName("gridLayout_2")
        # layout space untuk plot ==============
        self.plotSpace = QtWidgets.QVBoxLayout()
        self.plotSpace.setObjectName("plotSpace")
        self.gridLayout_2.addLayout(self.plotSpace, 1, 1, 1, 1)
        # ======================================
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setContentsMargins(0, -1, 279, -1)
        self.horizontalLayout.setObjectName("horizontalLayout")
        # setting logo BRIN ================================
        self.logo_brin = QtWidgets.QLabel(self.centralwidget)
        self.logo_brin.setEnabled(True)
        self.logo_brin.setText("")
        self.logo_brin.setPixmap(QtGui.QPixmap("backend/BRIN_main.png"))
        self.logo_brin.setAlignment(QtCore.Qt.AlignCenter)
        self.logo_brin.setObjectName("logo_brin")
        self.horizontalLayout.addWidget(self.logo_brin)
        # ==================================================
        # setting judul ====================================
        self.judul = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.judul.setFont(font)
        self.judul.setContextMenuPolicy(QtCore.Qt.NoContextMenu)
        self.judul.setAlignment(QtCore.Qt.AlignLeading | QtCore.Qt.AlignLeft | QtCore.Qt.AlignVCenter)
        self.judul.setObjectName("judul")
        self.horizontalLayout.addWidget(self.judul)
        self.verticalLayout.addLayout(self.horizontalLayout)
        # ===================================================
        self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
        self.groupBox.setObjectName("groupBox")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.groupBox)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        # setting combo box data ================================
        self.Data = QtWidgets.QLabel(self.groupBox)
        # self.Data.setTextFormat(QtCore.Qt.MarkdownText)
        self.Data.setObjectName("Data")
        self.Data.setIndent(89)
        self.gridLayout.addWidget(self.Data, 0, 0, 1, 1)
        self.boxData = QtWidgets.QComboBox(self.groupBox)
        self.boxData.setObjectName("boxData")
        self.gridLayout.addWidget(self.boxData, 0, 1, 1, 1)
        # ======================================================
        # setting combo box feature ============================
        self.Feature = QtWidgets.QLabel(self.groupBox)
        self.Feature.setIndent(69)
        self.Feature.setObjectName("Feature")
        self.gridLayout.addWidget(self.Feature, 0, 2, 1, 1)
        self.boxFeature = QtWidgets.QComboBox(self.groupBox)
        self.boxFeature.setObjectName("boxFeature")
        self.gridLayout.addWidget(self.boxFeature, 0, 3, 1, 1)
        # ====================================================
        # setting combo box Model AI =========================
        self.Model = QtWidgets.QLabel(self.groupBox)
        self.Model.setIndent(61)
        self.Model.setObjectName("Model")
        self.gridLayout.addWidget(self.Model, 0, 4, 1, 1)
        self.boxModel = QtWidgets.QComboBox(self.groupBox)
        self.boxModel.setObjectName("boxModel")
        self.gridLayout.addWidget(self.boxModel, 0, 5, 1, 1)
        # ===================================================
        # setting tombol predict ============================
        self.predictButton = QtWidgets.QPushButton(self.groupBox)
        self.predictButton.setObjectName("predictButton")
        self.gridLayout.addWidget(self.predictButton, 1, 0, 1, 6)
        # ===================================================
        self.gridLayout_3.addLayout(self.gridLayout, 0, 1, 1, 1)
        self.verticalLayout.addWidget(self.groupBox)
        self.gridLayout_2.addLayout(self.verticalLayout, 0, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(1208, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout_2.addItem(spacerItem, 2, 1, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(0, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_2.addItem(spacerItem1, 1, 0, 1, 1)
        self.gridLayout_4.addLayout(self.gridLayout_2, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)  # desain layout dari MainWindow ada di function retranslateUI
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        """ What Button Do """

        # List Data Battery
        self.dataBattery = ["None", "B05", "B06", "B07", "B18"]  # list string yang akan ditampilkan pada combo box
        self.boxData.addItems(self.dataBattery)  # command untuk menambahkan list ke combo box
        self.boxData.currentIndexChanged["QString"].connect(self.getData)  # mengambil nilai dari combo box yang diklik

        # List Feature
        self.feature = ["None", "C + V", "C + VIT", "C"]
        self.boxFeature.addItems(self.feature)
        self.boxFeature.currentIndexChanged["QString"].connect(self.getFeature)

        # List Model
        self.model = ["None", "LSTM", "Hybrid"]
        self.boxModel.addItems(self.model)
        self.boxModel.currentIndexChanged["QString"].connect(self.getModel)

        # Jika tombol predict diklik
        self.predictButton.clicked.connect(self.predict)  # jika tombol predict diklik, fungsi predict akan dijalankan

        # plotting
        self.fig = plt.figure()
        self.canvas = FigureCanvasQTAgg(self.fig)

        self.plotSpace.addWidget(self.canvas)  # meletakkan matplotlib canvas ke plotSpace

    def getData(self, value):
        """
        mengambil value dari data key
        :param value: int
        :return: int
        """
        try:
            dataDict = {
                "B05": 0,
                "B06": 1,
                "B07": 2,
                "B18": 3,
            }
            self.data = dataDict[value]
            print("Data battery: " + str(self.data) + " " + str(value))
            return self.data
        except Exception as e:
            print("Gagal memilih data")

    def getFeature(self, value):
        """
        mengambil value dari feature key
        :param value: int
        :return: int
        """
        try:
            featureDict = {
                "C + V": 0,
                "C + VIT": 1,
                "C": 2
            }
            self.feature = featureDict[value]
            print("Feature: " + str(self.feature) + " " + str(value))
            return self.feature
        except Exception as e:
            print("Gagal memilih feature")

    def getModel(self, value):
        """
        mengambil value dari Model AI key
        :param value:
        :return:
        """
        try:
            modelDict = {
                "LSTM": 0,
                "Hybrid": 1
            }
            self.model = modelDict[value]
            print("Model: " + str(self.model) + " " + str(value))
            return self.model
        except Exception as e:
            print("Gagal memilih model")

    def plot(self):
        """
        plotting
        :return:
        """
        self.fig.clear()  # clear figure bekas plot sebelumnya
        self.failure_point = round(float(max(self.inv_pred)[0] * 0.75), 2) # failure point dihitung dgn (max cap * 0,75)
        threshold = np.zeros(
            (len(self.inv_pred)))  # list kosong dengan size sesuai dengan banyaknya cucle hasil prediksi
        threshold.fill(self.failure_point)  # isi list kosong dengan failure threshold
        t = threshold

        if self.feature == 0 and self.data == 1:
            intersection = np.argwhere(np.isclose(t, self.pred_flat, rtol=0.01, atol=0.001)).flatten()
        elif self.data == 3:  # data B18 & fitur C
            intersection = np.argwhere(
                np.diff(np.sign(t - self.pred_flat))).flatten()  # titik potong antara grafik dengan threshold
        elif self.data == 0:  # data B05
            intersection = np.argwhere(np.isclose(t, self.pred_flat, rtol=0.001, atol=0.001)).flatten()
        # elif self.data == 3 and self.model == 1 and self.feature == 0:  # data B18 & model hybrid & fitur C+VIT
        #     intersection = np.argwhere(np.diff(np.sign(t - self.pred_flat))).flatten()
        #     intersection = intersection + 1
        else:
            intersection = np.argwhere(np.diff(np.sign(t - self.pred_flat))).flatten()

        try:
            gs = gridspec.GridSpec(1, 2,
                                   width_ratios=[8, 1])  # gs: grid space untuk plot grafik dan bar dengan rasio 8:1
            self.ax1 = self.fig.add_subplot(gs[0])  # axis untuk plot grafik
            self.ax2 = self.fig.add_subplot(gs[1])  # axis untuk bar plot

            if self.data == 1 and self.feature == 1 and self.model == 0: # Data B06, fitur C+VIT, model LSTM
                starting_point = 60
                self.ax1.plot(self.X[50:starting_point + 1], self.pred_flat[50:starting_point + 1], linewidth=2, color='k')
                self.ax1.plot(self.X[starting_point:intersection[-1] + 1], self.pred_flat[starting_point:intersection[-1] + 1],
                         linewidth=2, color='b')
                self.ax1.axvline(x=starting_point, color='g', ls='--', label="Starting Point")
            else:
                starting_point = 80
                self.ax1.plot(self.X[60:starting_point + 1], self.pred_flat[60:starting_point + 1], linewidth=2, color='k')
                self.ax1.plot(self.X[starting_point:intersection[-1] + 1], self.pred_flat[starting_point:intersection[-1] + 1],
                         linewidth=2, color='b')
                self.ax1.axvline(x=starting_point, color='g', ls='--', label="Starting Point")

            self.ax1.plot(self.X[intersection[-1]:], self.pred_flat[intersection[-1]:], linewidth=2, color='b',
                          ls=':')  # plot prediksi melewati failure threshold
            self.ax1.axvline(intersection[-1], color='m', ls='--',
                             label="End of Life")  # vertical line ketika grafik mencapai EoL

            self.ax1.axhline(y=self.failure_point, color='r', ls='-.',
                             label="Failure Threshold")  # horizontal line untuk failure threshold

            self.ax1.set_ylabel("Capacity (Ah)", fontsize=12)
            self.ax1.set_xlabel("Cycles", fontsize=12)

            self.ax2.bar(['Remaining Cycle'], [intersection[-1] - starting_point],
                         color='g')  # bar plot remaining cycle, titik potong - starting point ([intersection[-1] - 80])
            self.ax2.set_yticks(np.arange(0, max(self.X), 10));  # sumbu y bar plot (list dari 0 sampai cycle terakhir)

            text = f"RUL = {intersection[-1] - starting_point} cycles" # teks untuk menampilkan RUL di grafik

            self.ax1.legend()  # menampilkan legend

            # setting posisi teks RUL di grafik
            if self.data == 0:  # data B05
                if self.feature == 2:  # fitur C
                    plt.gcf().text(0.34, 0.7, text, fontsize=12)  # setting tulisan RUL = ... di tengah gambar
                else:
                    plt.gcf().text(0.3, 0.7, text, fontsize=12)

            elif self.data == 1:  # data B06
                plt.gcf().text(0.35, 0.83, text, fontsize=12)
                # if self.feature == 2:  # fitur C
                #     plt.gcf().text(0.35, 0.88, text, fontsize=12)
                # elif self.model == 0 and self.feature == 0:  # model LSTM & fitur C+V
                #     plt.gcf().text(0.35, 0.83, text, fontsize=12)
                # elif self.model == 1 and self.feature == 1:  # model hybrid & fitur C+VIT
                #     plt.gcf().text(0.35, 0.83, text, fontsize=12)
                # elif self.model == 0 and self.feature == 1:  # model LSTM & fitur c+VIT
                #     plt.gcf().text(0.45, 0.83, text, fontsize=12)
                # else:
                #     plt.gcf().text(0.35, 0.83, text, fontsize=12)

            elif self.data == 3:  # data B18
                if self.model == 0 and self.feature == 0:  # model LSTM & fitur C+V
                    plt.gcf().text(0.45, 0.83, text, fontsize=12)
                elif self.model == 1 and self.feature == 1:  # model hybrid & fitur C+VIT
                    plt.gcf().text(0.45, 0.83, text, fontsize=12)
                else:
                    plt.gcf().text(0.37, 0.83, text, fontsize=12)

        except Exception as e:  # dijalankan jika code pada indent try terjadi error. dalam kasus ini ketika user
            # memilih data B07 akan terjadi error karena data B07 tidak menyentuh threshild sehinga variable
            # intersection berisi list kosong
            self.ax1.plot(self.X, self.pred_flat, linewidth=2, color='k', label="Prediction")
            self.ax1.axhline(y=self.failure_point, color='r', ls='-.', label="Failure Threshold")
            self.ax1.set_yticks(np.arange(1.4, max(self.pred_flat), 0.15));
            self.ax2.set_yticks(np.arange(0, max(self.X), 10));
            self.ax2.set_xticks([1]);
            self.ax1.set_ylabel("Capacity (Ah)", fontsize=12)
            self.ax1.set_xlabel("Cycles", fontsize=12)
            self.ax2.set_xlabel("Remaining cycles", fontsize=12)
            self.ax1.legend()

        self.fig.tight_layout()  # memastikan gambar plot yang muncul rapi
        self.canvas.draw_idle()  # mencetak gambar ke layar

    def predict(self):
        try:
            dataPath = "backend/data/NASA/"  # path dataset
            x_data, y_data = utils.getData(dataPath)  # ambil data
            print("Berhasil load data")

            if self.feature == 2 and self.model == 0:  # fitur C & model LSTM
                testX, SS = utils.extract_VIT_capacity([x_data[self.data]], [y_data[self.data]], 5, 1,
                                                       10,
                                                       self.feature, self.model, c_only=True)  # ekstrak charging &
                # discharging profile tergantung input model
                C_LSTM_model = tf.keras.models.load_model(
                    "backend/model/C_LSTM_model_B05_k1.h5")
                C_LSTM_pred = C_LSTM_model.predict(testX)  # fitur C sebagai input
                self.inv_pred = SS.inverse_transform(C_LSTM_pred)  # mengembalikan nilai asli dari scalling
                self.X = range(len(self.inv_pred))  # membuat list sejumlah hasil prediksi (untuk sumbu X plotting)
                self.pred_flat = self.inv_pred.flatten()  # mengambil nilai capacity (untuk sumbu y plotting)
                self.plot()  # memanggil fungsi plot (menampilkan plot)

            elif self.feature == 0:  # fitur V + C
                if self.model == 0:  # model LSTM
                    testX, SS = utils.extract_VIT_capacity([x_data[self.data]], [y_data[self.data]], 5, 1,
                                                           10,
                                                           self.feature, self.model)
                    SC_LSTM_model = tf.keras.models.load_model(
                        "backend/model/SC_LSTM_model_B18_k2.h5")
                    SC_LSTM_pred = SC_LSTM_model.predict(testX)  # C as input
                    self.inv_pred = SS.inverse_transform(SC_LSTM_pred)
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()

                elif self.model == 1:  # model hybrid
                    testX_SC_h_LSTM, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                     [y_data[self.data]], 5, 1, 10,
                                                                     self.feature,
                                                                     self.model, c=True)  # C extracted
                    testX_SC_h_CNN, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                    [y_data[self.data]], 5, 1, 10,
                                                                    self.feature, self.model)  # V extracted
                    SC_hybrid_model = tf.keras.models.load_model(
                        "backend/model/SC_CNN+LSTM_model_B07_k2.h5")
                    SC_hybrid_pred = SC_hybrid_model.predict([testX_SC_h_LSTM, testX_SC_h_CNN])  # C as LSTM input,
                    # V as CNN input
                    self.inv_pred = SS.inverse_transform(SC_hybrid_pred)
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()
                print("Berhasil load model dan transform data")
                self.plot()

            elif self.feature == 1:  # fitur C + VIT
                if self.model == 0:  # model LSTM
                    testX, SS = utils.extract_VIT_capacity([x_data[self.data]], [y_data[self.data]], 5, 1,
                                                           10,
                                                           self.feature, self.model)  # V and C extracted
                    MC_LSTM_model = tf.keras.models.load_model(
                        "backend/model/MC_LSTM_model_B06_k2.h5")
                    MC_LSTM_pred = MC_LSTM_model.predict(testX) # V and C as inputs
                    self.inv_pred = SS.inverse_transform(MC_LSTM_pred)
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()

                elif self.model == 1:  # model hybrid
                    testX_MC_h_LSTM, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                     [y_data[self.data]], 5, 1, 10,
                                                                     self.feature,
                                                                     self.model, c=True)  # C extracted
                    testX_MC_h_V_CNN, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                      [y_data[self.data]], 5, 1, 10,
                                                                      self.feature,
                                                                      self.model, v=True)  # V extracted
                    testX_MC_h_I_CNN, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                      [y_data[self.data]], 5, 1, 10,
                                                                      self.feature,
                                                                      self.model, II=True)  # I extracted
                    testX_MC_h_T_CNN, SS = utils.extract_VIT_capacity([x_data[self.data]],
                                                                      [y_data[self.data]], 5, 1, 10,
                                                                      self.feature,
                                                                      self.model, t=True)  # I extracted
                    MC_hybrid_model = tf.keras.models.load_model(
                        "backend/model/MC_SCNN+LSTM_model_B07_k3.h5")
                    MC_hybrid_pred = MC_hybrid_model.predict(
                        [testX_MC_h_LSTM, testX_MC_h_V_CNN, testX_MC_h_I_CNN, testX_MC_h_T_CNN])  # C as LSTM inputs,
                    # V, I, T as CNN input separately
                    self.inv_pred = SS.inverse_transform(MC_hybrid_pred)
                    self.X = range(len(self.inv_pred))
                    self.pred_flat = self.inv_pred.flatten()
                print("Berhasil load model dan transform data")
                self.plot()

            elif self.feature == 2 and self.model != 0: # fitur C & model bukan LSTM
                self.fig.clear()
                plt.gcf().text(0.5, 0.5, "Silahkan pilih model AI yang lain", fontsize=14, horizontalalignment='center',
                               verticalalignment='center')
                self.canvas.draw_idle()

            print("Berhasil plot")

        except Exception as e:
            print("Gagal Memprediksi")

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Battery System Prediction"))
        self.judul.setText(_translate("MainWindow",
                                      "<html><head/><body><p><span style=\" font-size:16pt; "
                                      "font-weight:600;\">Battery System Prediction</span></p></body></html>"))
        self.groupBox.setTitle(_translate("MainWindow", "Parameters"))
        self.Data.setText(_translate("MainWindow",
                                     "<html><head/><body><p><span style=\" "
                                     "font-size:9pt;\">Data</span></p></body></html>"))
        self.Feature.setText(_translate("MainWindow",
                                        "<html><head/><body><p><span style=\" "
                                        "font-size:10pt;\">Feature</span></p></body></html>"))
        self.Model.setText(_translate("MainWindow",
                                      "<html><head/><body><p><span style=\" font-size:10pt;\">Model "
                                      "AI</span></p></body></html>"))
        self.predictButton.setText(_translate("MainWindow", "PREDICT"))


if __name__ == "__main__":
    import sys

    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
