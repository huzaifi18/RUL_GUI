# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'v1.2.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
import numpy as np

# Model Utilites
from backend import utils
import tensorflow as tf

# Plotting Utilites
import matplotlib.pyplot as plt
import matplotlib
matplotlib.use("Qt5Agg")
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1280, 720)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.gridLayout_2 = QtWidgets.QGridLayout()
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
        self.groupBox.setObjectName("groupBox")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.groupBox)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.Data = QtWidgets.QLabel(self.groupBox)
        self.Data.setTextFormat(QtCore.Qt.MarkdownText)
        self.Data.setObjectName("Data")
        self.gridLayout.addWidget(self.Data, 0, 0, 1, 1)
        self.boxBattery = QtWidgets.QComboBox(self.groupBox)
        self.boxBattery.setObjectName("boxBattery")
        self.gridLayout.addWidget(self.boxBattery, 0, 1, 1, 1)
        self.Cycle = QtWidgets.QLabel(self.groupBox)
        self.Cycle.setObjectName("Cycle")
        self.gridLayout.addWidget(self.Cycle, 0, 2, 1, 1)
        self.boxCycle = QtWidgets.QComboBox(self.groupBox)
        self.boxCycle.setObjectName("boxCycle")
        self.gridLayout.addWidget(self.boxCycle, 0, 3, 1, 1)
        self.pushButton = QtWidgets.QPushButton(self.groupBox)
        self.pushButton.setObjectName("pushButton")
        self.gridLayout.addWidget(self.pushButton, 1, 0, 1, 4)
        self.gridLayout_4.addLayout(self.gridLayout, 0, 0, 1, 1)
        self.gridLayout_2.addWidget(self.groupBox, 1, 1, 1, 1)
        self.label = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.label.setFont(font)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout_2.addWidget(self.label, 0, 1, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(0, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_2.addItem(spacerItem, 2, 0, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(1028, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout_2.addItem(spacerItem1, 3, 1, 1, 1)
        self.plotSpace = QtWidgets.QVBoxLayout()
        self.plotSpace.setObjectName("plotSpace")
        self.gridLayout_2.addLayout(self.plotSpace, 2, 1, 1, 1)
        self.gridLayout_3.addLayout(self.gridLayout_2, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        """What Button Do"""

        # List data Baterai
        self.dataBattery = ["None", "B05", "B06", "B07", "B18"]
        self.boxBattery.addItems(self.dataBattery)

        self.boxBattery.currentIndexChanged["QString"].connect(self.getData)

        # List Cycle
        self.cycle = ["0", "10", "20", "30", "40", "50"]
        self.boxCycle.addItems(self.cycle)

        self.boxCycle.currentIndexChanged["QString"].connect(self.getCycle)

        # if predict button clicked
        self.pushButton.clicked.connect(self.predict)

        # self.canv = MatplotlibCanvas(self)
        self.figure = plt.figure()
        self.canvas = FigureCanvasQTAgg(self.figure)

        self.plotSpace.addWidget(self.canvas)


    def getData(self, value):
        try:
            print("Data battery: ", value)
            global data
            dataDict = {
                "B05": 1,
                "B06": 2,
                "B07": 3,
                "B18": 4,
            }
            data = dataDict[value]
            return data
        except Exception as e:
            pass

    def getCycle(self, value):
        try:
            global cycle
            print("Cycle: ", value)
            cycle = int(value)
            return cycle
        except Exception as e:
            pass

    def plot(self, LSTM_predict, TFM_predict, true, cycle):
        self.figure.clear()
        self.ax = self.figure.add_subplot(111)

        # Threshold
        threshold = np.empty((len(LSTM_predict)))
        threshold.fill(1.4)


        # Data LSTM Predict
        LSTM_predict = LSTM_predict.reshape(LSTM_predict.shape[0])
        x = range(len(LSTM_predict))
        f = threshold
        g = LSTM_predict.flatten()

        # Data TFM Predict
        TFM_predict = TFM_predict.reshape(TFM_predict.shape[0])
        TFM_x = range(len(TFM_predict))
        TFM_g = TFM_predict.flatten()

        # Data True
        true = true.reshape(true.shape[0])
        x_true = range(len(true))
        tr = true.flatten()

        try:
            idx_LSTM = np.argwhere(np.isclose(f, g, atol=0.01)).flatten()  # Titik potong LSTM
            idx_TFM = np.argwhere(np.isclose(f, TFM_g, atol=0.01)).flatten()  # Titik potong TFM
            idx_true = np.argwhere(np.isclose(f, tr, atol=0.01)).flatten()  # Titik potong True

            # Plot EOL Boundary
            self.ax.axvline(idx_LSTM[0] - cycle, color='g', ls='--', label="RUL")
            self.ax.axvline(idx_true[-1], color='g', ls='--')
            self.ax.plot(x[idx_LSTM[0] - cycle - 30:], f[idx_LSTM[0] - cycle - 30:], 'k-.',
                     label='Threshold')  # plot threshold
            print("Berhasil Plot Threshold")

            self.ax.plot(x_true[idx_LSTM[0] - cycle - 30:], tr[idx_LSTM[0] - cycle - 30:], 'r',
                     label='True')  # plot True
            print("Berhasil Plot True")
            self.ax.plot(x[idx_LSTM[0] - cycle:idx_true[-1] + 1], g[idx_LSTM[0] - cycle:idx_true[-1] + 1], 'g-',
                     label='LSTM')  # plot prediction LSTM
            print("Berhasil Plot LSTM")
            self.ax.plot(TFM_x[idx_LSTM[0] - cycle:idx_true[-1] + 1], TFM_g[idx_LSTM[0] - cycle:idx_true[-1] + 1], 'b-',
                     label="Transformer")  # plot prediction Transformer
            print("Berhasil Plot Transformer")

            # self.ax.text(x[idx_LSTM[0] - cycle - 20], g[np.where(g == LSTM_predict[40])], "Starting Cycle")
            plt.gcf().text(0.15, 0.9, "Starting Cycle")

            text = '\n'.join((
                f"EOL LSTM: {idx_LSTM[-1]}",
                f"EOL Transformer: {idx_TFM[-1]}",
                f"EOL True: {idx_true[-1]}",
                f"Error LSTM: {abs(idx_true[-1] - idx_LSTM[-1])}",
                f"Error Transformer: {abs(idx_true[-1] - idx_TFM[-1])}"
            ))

            box = dict(boxstyle='square', facecolor='wheat', alpha=0.5)

            # plt.text(x[idx_true[-1] - 45], g[np.where(g == LSTM_predict[50])], text, bbox=box)

            plt.gcf().text(0.7, 0.6, text, bbox=box)


            # self.ax.text(x[idx_true[-1] - 20], g[np.where(g == LSTM_predict[50])], f"EOL LSTM: {idx_LSTM[-1]}")
            # self.ax.text(x[idx_true[-1] - 20], g[np.where(g == LSTM_predict[55])], f"EOL Transformer: {idx_TFM[-1]}")
            # self.ax.text(x[idx_true[-1] - 20], g[np.where(g == LSTM_predict[60])], f"EOL True: {idx_true[-1]}")
            # self.ax.text(x[idx_true[-1] - 20], g[np.where(g == LSTM_predict[70])],
            #          f"Error: {abs(idx_true[-1] - idx_LSTM[-1])}")

        except Exception as e:
            idx_true = np.argwhere(np.isclose(f, tr, atol=0.01)).flatten()
            self.ax.plot(x, f, 'k-.', label="Threshold")
            self.ax.plot(true, label='True')

            self.ax.axvline(idx_true[-1], color='g', ls='--')

            self.ax.text(x[-1] - 33, g[0] - 0.09, "EOL LSTM: NaN")
            self.ax.text(x[-1] - 33, g[0] - 0.12, "EOL Transformer: NaN")
            self.ax.text(x[-1] - 33, g[0] - 0.15, f"EOL True: {idx_true[-1]}")
            self.ax.text(x[-1] - 33, g[0] - 0.2, "Error: NaN")

        self.ax.set_xlabel('Number of Cycle')
        self.ax.set_ylabel('DIscharge Capacity (Ah)')
        self.ax.legend(loc='center right', bbox_to_anchor=(1.18, 0.5))
        self.canvas.figure.tight_layout()
        self.canvas.draw()

    def predict(self):
        try:
            LSTM_model = tf.keras.models.load_model("backend/model/LSTM/")
            TFM_model = tf.keras.models.load_model("backend/model/Transformer+T2V/")
            print("Berhasil load model")

            dataPath = "backend/data/NASA/"
            x_test, y_test = utils.getData(dataPath)
            print("Berhasil load data")

            data_idx = data-1
            testX, testY, SS_tt = utils.extract_VIT_capacity([x_test[data_idx]], [y_test[data_idx]], 5, 1, 10)
            print("Berhasil ekstrak data")

            LSTM_testPredict = LSTM_model.predict(testX)
            TFM_testPredict = TFM_model.predict(testX)
            print("Berhasil predict data")

            inv_testY = SS_tt[0][30].inverse_transform(testY)
            LSTM_inv_testPredict = SS_tt[0][30].inverse_transform(LSTM_testPredict)
            TFM_inv_testPredict = SS_tt[0][30].inverse_transform(TFM_testPredict)
            print("Berhasil transform data")

            self.plot(LSTM_inv_testPredict, TFM_inv_testPredict, inv_testY, cycle=cycle)

        except Exception as e:
            print("Gagal Memprediksi")

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.groupBox.setTitle(_translate("MainWindow", "Parameters"))
        self.Data.setText(_translate("MainWindow",
                                     "<html><head/><body><p><span style=\" font-size:9pt;\">Data</span></p></body></html>"))
        self.Cycle.setText(_translate("MainWindow",
                                      "<html><head/><body><p><span style=\" font-size:10pt;\">Cycle</span></p></body></html>"))
        self.pushButton.setText(_translate("MainWindow", "PREDICT"))
        self.label.setText(_translate("MainWindow",
                                      "<html><head/><body><p align=\"center\"><span style=\" font-size:14pt; font-weight:600;\">Remaining Useful Life Plot</span></p></body></html>"))


if __name__ == "__main__":
    import sys

    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
