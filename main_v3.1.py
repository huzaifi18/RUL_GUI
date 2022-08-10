# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'v3.1.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

# model utilites
from backend import utils_v2 as utils
from numpy import argwhere, isclose, diff, sign, zeros, arange
from tensorflow.keras.models import load_model

# plot utilities
import matplotlib.pyplot as plt
import matplotlib.gridspec as gridspec
from matplotlib import use
use("Qt5Agg")
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1147, 790)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("backend/BRIN_edge.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        MainWindow.setWindowIcon(icon)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_7 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_7.setObjectName("gridLayout_7")
        self.gridLayout_6 = QtWidgets.QGridLayout()
        self.gridLayout_6.setObjectName("gridLayout_6")
        self.plotSpace = QtWidgets.QVBoxLayout()
        self.plotSpace.setObjectName("plotSpace")
        self.gridLayout_6.addLayout(self.plotSpace, 2, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(1048, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout_6.addItem(spacerItem, 3, 1, 1, 1)
        self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
        self.groupBox.setObjectName("groupBox")
        self.gridLayout_5 = QtWidgets.QGridLayout(self.groupBox)
        self.gridLayout_5.setObjectName("gridLayout_5")
        self.gridLayout_3 = QtWidgets.QGridLayout()
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.Data = QtWidgets.QLabel(self.groupBox)
        # self.Data.setTextFormat(QtCore.Qt.MarkdownText)
        self.Data.setAlignment(QtCore.Qt.AlignCenter)
        self.Data.setIndent(89)
        self.Data.setObjectName("Data")
        self.gridLayout_3.addWidget(self.Data, 0, 0, 1, 1)
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")

        # Tombol B5
        self.buttonB5 = QtWidgets.QPushButton(self.groupBox)
        self.buttonB5.setObjectName("buttonB5")
        self.buttonB5.setCheckable(True)
        self.buttonB5.click()
        self.gridLayout.addWidget(self.buttonB5, 0, 0, 1, 1)

        # Tombol B6
        self.buttonB6 = QtWidgets.QPushButton(self.groupBox)
        self.buttonB6.setObjectName("buttonB6")
        self.buttonB6.setCheckable(True)
        self.gridLayout.addWidget(self.buttonB6, 0, 1, 1, 1)

        # Tombol B7
        self.buttonB7 = QtWidgets.QPushButton(self.groupBox)
        self.buttonB7.setObjectName("buttonB7")
        self.buttonB7.setCheckable(True)
        self.gridLayout.addWidget(self.buttonB7, 1, 0, 1, 1)

        # Tombol B18
        self.buttonB18 = QtWidgets.QPushButton(self.groupBox)
        self.buttonB18.setObjectName("buttonB18")
        self.buttonB18.setCheckable(True)
        self.gridLayout.addWidget(self.buttonB18, 1, 1, 1, 1)

        # Jika salah satu tombol baterai diklik
        # Jika baterai B5 diklik
        self.buttonB5.clicked.connect(lambda: self.buttonB6.setChecked(False))
        self.buttonB5.clicked.connect(lambda: self.buttonB7.setChecked(False))
        self.buttonB5.clicked.connect(lambda: self.buttonB18.setChecked(False))
        self.buttonB5.clicked.connect(self.btnstate)

        # Jika baterai B6 diklik
        self.buttonB6.clicked.connect(lambda: self.buttonB5.setChecked(False))
        self.buttonB6.clicked.connect(lambda: self.buttonB7.setChecked(False))
        self.buttonB6.clicked.connect(lambda: self.buttonB18.setChecked(False))
        self.buttonB6.clicked.connect(self.btnstate)

        # Jika baterai B7 diklik
        self.buttonB7.clicked.connect(lambda: self.buttonB5.setChecked(False))
        self.buttonB7.clicked.connect(lambda: self.buttonB6.setChecked(False))
        self.buttonB7.clicked.connect(lambda: self.buttonB18.setChecked(False))
        self.buttonB7.clicked.connect(self.btnstate)

        # Jika baterai B18 diklik
        self.buttonB18.clicked.connect(lambda: self.buttonB5.setChecked(False))
        self.buttonB18.clicked.connect(lambda: self.buttonB6.setChecked(False))
        self.buttonB18.clicked.connect(lambda: self.buttonB7.setChecked(False))
        self.buttonB18.clicked.connect(self.btnstate)

        self.gridLayout_3.addLayout(self.gridLayout, 0, 1, 1, 1)
        self.gridLayout_5.addLayout(self.gridLayout_3, 0, 0, 1, 1)
        self.gridLayout_4 = QtWidgets.QGridLayout()
        self.gridLayout_4.setObjectName("gridLayout_4")

        self.Model = QtWidgets.QLabel(self.groupBox)
        self.Model.setAlignment(QtCore.Qt.AlignCenter)
        self.Model.setIndent(61)
        self.Model.setObjectName("Model")
        self.gridLayout_4.addWidget(self.Model, 0, 0, 1, 1)
        self.gridLayout_2 = QtWidgets.QGridLayout()
        self.gridLayout_2.setObjectName("gridLayout_2")

        # Tombol LSTM
        self.buttonLSTM = QtWidgets.QPushButton(self.groupBox)
        self.buttonLSTM.setObjectName("buttonLSTM")
        self.buttonLSTM.setCheckable(True)
        self.buttonLSTM.toggle()
        # print(self.buttonLSTM.isChecked())
        self.gridLayout_2.addWidget(self.buttonLSTM, 0, 0, 1, 1)

        # Tombol Hybrid
        self.buttonHybird = QtWidgets.QPushButton(self.groupBox)
        self.buttonHybird.setObjectName("buttonHybird")
        self.buttonHybird.setCheckable(True)
        self.gridLayout_2.addWidget(self.buttonHybird, 1, 0, 1, 1)

        # Jika salah satu tombol model diklik
        # jika tombol LSTM diklik
        self.buttonLSTM.clicked.connect(lambda: self.buttonHybird.setChecked(False))
        self.buttonLSTM.clicked.connect(self.btnstate)

        # jika tombol hybrid diklik
        self.buttonHybird.clicked.connect(lambda: self.buttonLSTM.setChecked(False))
        self.buttonHybird.clicked.connect(self.btnstate)


        self.gridLayout_4.addLayout(self.gridLayout_2, 0, 1, 1, 1)
        self.gridLayout_5.addLayout(self.gridLayout_4, 0, 1, 1, 1)
        self.gridLayout_6.addWidget(self.groupBox, 1, 1, 1, 1)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setContentsMargins(0, -1, 279, -1)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.logo_brin = QtWidgets.QLabel(self.centralwidget)
        self.logo_brin.setEnabled(True)
        self.logo_brin.setText("")
        self.logo_brin.setPixmap(QtGui.QPixmap("backend/BRIN_main.png"))
        self.logo_brin.setAlignment(QtCore.Qt.AlignCenter)
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
        self.gridLayout_6.addLayout(self.horizontalLayout, 0, 1, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(0, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_6.addItem(spacerItem1, 2, 0, 1, 1)
        self.gridLayout_7.addLayout(self.gridLayout_6, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        # plotting
        self.fig = plt.figure()
        self.canvas = FigureCanvasQTAgg(self.fig)
        self.plotSpace.addWidget(self.canvas)  # meletakkan matplotlib canvas ke plotSpace

        self.btnstate()

    def call_model(self, models):
        try:
            if models == 'hybrid':
                # fitur C + V
                # testX_SC_h_LSTM, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                #                                                  [self.y_data[self.data]], 5, 1, 10,
                #                                                  self.feature,
                #                                                  self.model, c=True)  # C extracted
                # testX_SC_h_CNN, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                #                                                 [self.y_data[self.data]], 5, 1, 10,
                #                                                 self.feature, self.model)  # V extracted
                # SC_hybrid_model = load_model(
                #     "backend/model/SC_CNN+LSTM_model_B07_k2.h5")
                # SC_hybrid_pred = SC_hybrid_model.predict([testX_SC_h_LSTM, testX_SC_h_CNN])  # C as LSTM input,
                # # V as CNN input
                # self.inv_pred = SS.inverse_transform(SC_hybrid_pred)
                # self.X = range(len(self.inv_pred))
                # self.pred_flat = self.inv_pred.flatten()

                # fitur C + VIT
                print("Mulai mengekstrak")
                testX_MC_h_LSTM, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                                                                 [self.y_data[self.data]], 5, 1, 10,
                                                                 self.feature, self.model, c=True)  # C extracted
                testX_MC_h_V_CNN, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                                                                  [self.y_data[self.data]], 5, 1, 10,
                                                                  self.feature, self.model, v=True)  # V extracted
                testX_MC_h_I_CNN, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                                                                  [self.y_data[self.data]], 5, 1, 10,
                                                                  self.feature, self.model, II=True)  # I extracted
                testX_MC_h_T_CNN, SS = utils.extract_VIT_capacity([self.x_data[self.data]],
                                                                  [self.y_data[self.data]], 5, 1, 10,
                                                                  self.feature, self.model, t=True)  # I extracted
                print("Selesai ekstrak fitur")
                print("load model")
                MC_hybrid_model = load_model("backend/model/MC_SCNN+LSTM_model_B07_k3.h5")
                MC_hybrid_pred = MC_hybrid_model.predict(
                    [testX_MC_h_LSTM, testX_MC_h_V_CNN, testX_MC_h_I_CNN, testX_MC_h_T_CNN])  # C as LSTM inputs,
                # V, I, T as CNN input separately
                self.inv_pred = SS.inverse_transform(MC_hybrid_pred)
                self.X = range(len(self.inv_pred))
                self.pred_flat = self.inv_pred.flatten()
                print("Berhasil load model dan transform data")

            elif models == 'LSTM':
                # fitur C + V
                # testX, SS = utils.extract_VIT_capacity([self.x_data[self.data]], [self.y_data[self.data]], 5, 1,
                #                                        10,
                #                                        self.feature, self.model)
                # SC_LSTM_model = load_model(
                #     "backend/model/SC_LSTM_model_B18_k2.h5")
                # SC_LSTM_pred = SC_LSTM_model.predict(testX)  # C as input
                # self.inv_pred = SS.inverse_transform(SC_LSTM_pred)
                # self.X = range(len(self.inv_pred))
                # self.pred_flat = self.inv_pred.flatten()

                # fitur C + VIT
                # testX, SS = utils.extract_VIT_capacity([self.x_data[self.data]], [self.y_data[self.data]], 5, 1,
                #                                        10,
                #                                        self.feature, self.model)  # V and C extracted
                # MC_LSTM_model = load_model(
                #     "backend/model/MC_LSTM_model_B06_k2.h5")
                # MC_LSTM_pred = MC_LSTM_model.predict(testX)  # V and C as inputs
                # self.inv_pred = SS.inverse_transform(MC_LSTM_pred)
                # self.X = range(len(self.inv_pred))
                # self.pred_flat = self.inv_pred.flatten()
                # fitur C
                testX, SS = utils.extract_VIT_capacity([self.x_data[self.data]], [self.y_data[self.data]], 5, 1,
                                                       10,
                                                       self.feature, self.model, c_only=True)  # ekstrak charging &
                # discharging profile tergantung input model
                C_LSTM_model = load_model(
                    "backend/model/C_LSTM_model_B05_k1.h5")
                C_LSTM_pred = C_LSTM_model.predict(testX)  # fitur C sebagai input
                self.inv_pred = SS.inverse_transform(C_LSTM_pred)  # mengembalikan nilai asli dari scalling
                self.X = range(len(self.inv_pred))  # membuat list sejumlah hasil prediksi (untuk sumbu X plotting)
                self.pred_flat = self.inv_pred.flatten()  # mengambil nilai capacity (untuk sumbu y plotting)


        except Exception:
            print("Gagal load model dan transform data")

    def plot(self):
        self.fig.clear()
        self.failure_point = round(float(max(self.inv_pred)[0] * 0.75), 2) # failure point dihitung dgn (max cap * 0,75)
        threshold = zeros(
            (len(self.inv_pred)))  # list kosong dengan size sesuai dengan banyaknya cucle hasil prediksi
        threshold.fill(self.failure_point)  # isi list kosong dengan failure threshold
        t = threshold

        if self.feature == 0 and self.data == 1:
            intersection = argwhere(isclose(t, self.pred_flat, rtol=0.01, atol=0.001)).flatten()
        elif self.data == 3:
            intersection = argwhere(diff(sign(t - self.pred_flat))).flatten()  # titik potong antara grafik dengan threshold
        elif self.data == 0:  # data B05
            intersection = argwhere(isclose(t, self.pred_flat, rtol=0.001, atol=0.001)).flatten()
        else:
            intersection = argwhere(diff(sign(t - self.pred_flat))).flatten()

        try:
            gs = gridspec.GridSpec(1, 2,
                                   width_ratios=[8, 1])  # gs: grid space untuk plot grafik dan bar dengan rasio 8:1
            self.ax1 = self.fig.add_subplot(gs[0])  # axis untuk plot grafik
            self.ax2 = self.fig.add_subplot(gs[1])  # axis untuk bar plot

            if self.data == 1 and self.feature == 0 or self.feature == 1 and self.model == 0:  # Data B06, fitur C+VIT, model LSTM
                starting_point = 60
                self.ax1.plot(self.X[50:starting_point + 1], self.pred_flat[50:starting_point + 1], linewidth=2,
                              color='k')
                self.ax1.plot(self.X[starting_point:intersection[-1] + 1],
                              self.pred_flat[starting_point:intersection[-1] + 1],
                              linewidth=2, color='b')
                self.ax1.axvline(x=starting_point, color='g', ls='--', label="Starting Point")
            else:
                starting_point = 80
                self.ax1.plot(self.X[60:starting_point + 1], self.pred_flat[60:starting_point + 1], linewidth=2,
                              color='k')
                self.ax1.plot(self.X[starting_point:intersection[-1] + 1],
                              self.pred_flat[starting_point:intersection[-1] + 1],
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
            self.ax2.set_yticks(arange(0, max(self.X), 10));  # sumbu y bar plot (list dari 0 sampai cycle terakhir)

            text = f"RUL = {intersection[-1] - starting_point} cycles"  # teks untuk menampilkan RUL di grafik

            self.ax1.legend()  # menampilkan legend

            # setting posisi teks RUL di grafik
            if self.data == 0:  # data B05
                if self.feature == 2:  # fitur C
                    plt.gcf().text(0.34, 0.7, text, fontsize=12)  # setting tulisan RUL = ... di tengah gambar
                else:
                    plt.gcf().text(0.3, 0.7, text, fontsize=12)

            elif self.data == 1:  # data B06
                plt.gcf().text(0.35, 0.83, text, fontsize=12)

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
            self.ax1.set_yticks(arange(1.4, max(self.pred_flat), 0.15));
            self.ax2.set_yticks(arange(0, max(self.X), 10));
            self.ax2.set_xticks([1]);
            self.ax1.set_ylabel("Capacity (Ah)", fontsize=12)
            self.ax1.set_xlabel("Cycles", fontsize=12)
            self.ax2.set_xlabel("Remaining cycles", fontsize=12)
            self.ax1.legend()

        self.fig.tight_layout()  # memastikan gambar plot yang muncul rapi
        self.canvas.draw_idle()  # mencetak gambar ke layar

    def btnstate(self):
        try:
            dataPath = "backend/data/NASA/"  # path dataset
            self.x_data, self.y_data = utils.getData(dataPath)  # ambil data
            print("Berhasil load data")
        except Exception as e:
            print("Gagal load data")

        if self.buttonLSTM.isChecked():
            self.model = 0
            self.feature = 2 # (0: C + V, 1: C+VIT, 2: C)
            if self.buttonB5.isChecked():
                print("Tombol LSTM dan B5 ditekan")
                self.data = 0
                self.call_model('LSTM')
                self.plot()
            elif self.buttonB6.isChecked():
                print("Tombol LSTM dan B6 ditekan")
                self.data = 1
                self.call_model('LSTM')
                self.plot()
            elif self.buttonB7.isChecked():
                print("Tombol LSTM dan B7 ditekan")
                self.data = 2
                self.call_model('LSTM')
                self.plot()
            elif self.buttonB18.isChecked():
                print("Tombol LSTM dan B18 ditekan")
                self.data = 3
                self.call_model('LSTM')
                self.plot()

        elif self.buttonHybird.isChecked():
            self.model = 1
            self.feature = 1 # (0: C + V, 1: C+VIT)
            if self.buttonB5.isChecked():
                print("Tombol Hybrid dan B5 ditekan")
                self.data = 0
                self.call_model('hybrid')
                self.plot()
            elif self.buttonB6.isChecked():
                print("Tombol Hybrid dan B6 ditekan")
                self.data = 1
                self.call_model('hybrid')
                self.plot()
            elif self.buttonB7.isChecked():
                print("Tombol Hybrid dan B7 ditekan")
                self.data = 2
                self.call_model('hybrid')
                self.plot()
            elif self.buttonB18.isChecked():
                print("Tombol Hybrid dan B18 ditekan")
                self.data = 3
                self.call_model('hybrid')
                self.plot()
        else:
            print("Tombol dilepas")

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Battery System Prediction"))
        self.groupBox.setTitle(_translate("MainWindow", "Parameters"))
        self.Data.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:9pt;\">Data</span></p></body></html>"))
        self.buttonB5.setText(_translate("MainWindow", "B5"))
        self.buttonB6.setText(_translate("MainWindow", "B6"))
        self.buttonB7.setText(_translate("MainWindow", "B7"))
        self.buttonB18.setText(_translate("MainWindow", "B18"))
        self.Model.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:10pt;\">Model AI</span></p></body></html>"))
        self.buttonLSTM.setText(_translate("MainWindow", "LSTM"))
        self.buttonHybird.setText(_translate("MainWindow", "Hybrid"))
        self.judul.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt; font-weight:600;\">Battery System Prediction</span></p></body></html>"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

