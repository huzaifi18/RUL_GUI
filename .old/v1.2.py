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
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg, NavigationToolbar2QT
from matplotlib.figure import Figure

# Create matplotlib canvas
class MatplotlibCanvas(FigureCanvasQTAgg):
    def __init__(self, parent=None):
        fig = Figure()
        self.axes = fig.add_subplot(111)
        super(MatplotlibCanvas, self).__init__(fig)
        fig.tight_layout()

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1104, 650)
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
        spacerItem2 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_2.addItem(spacerItem2, 2, 1, 1, 1)
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

        self.canv = MatplotlibCanvas(self)


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
            print("Cycle: ", value)
            cycle = int(value)
            return cycle
        except Exception as e:
            pass

    def predict(self):
        try:
            print(data)
            path = "backend\model\singleLSTM_B5\singleLSTM_h32_bs50_ep100_w5_Adam_lr0.001_k1\saved_model_and_weights"
            model = tf.keras.models.load_model(path)
            print("Berhasil load model")

            dataPath = "backend/data/NASA/"
            x_test, y_test = utils.getData(dataPath)
            print("berhasil load data")

            data_idx = data
            testX, testY, SS_tt = utils.extract_VIT_capacity([x_test[data_idx]], [y_test[data_idx]], 5, 1, 10)
            print("Berhasil ekstrak data")

            testPredict = model.predict(testX)
            print("Berhasil predict data")

            inv_testPredict = SS_tt[0][30].inverse_transform(testPredict)
            print("Berhasil transform data")

            print(type(inv_testPredict))

            def plot(self, predict=None, cycle=None, endCycle=10):
                threshold = np.empty((len(predict)))
                threshold.fill(1.41)
                predict = predict.reshape(predict.shape[0])

                # fig = plt.figure(figsize=(12, 4), dpi=150)

                self.canv = MatplotlibCanvas(self)
                self.vert

                self.canv.axes.cla()
                ax = self.canv.axes

                x = range(len(predict))
                f = threshold
                g = predict.flatten()

                idx = np.argwhere(np.isclose(f, g, atol=0.001)).flatten()

                # titik potong menjadi titik akhir
                ax.plot(x[idx[0] - cycle:idx[0] + endCycle], f[idx[0] - cycle:idx[0] + endCycle], 'r-.')
                ax.plot(x[idx[0] - cycle:idx[0] + endCycle], g[idx[0] - cycle:idx[0] + endCycle], '-')



                ax.annotate(f"Critical Point, Cycle {idx[0]}",
                             xy=(x[idx[0]], f[idx[0]]),
                             xytext=(x[idx[0]], 1.03 * f[idx[0]]),
                             arrowprops={})

                ax.set_xlabel('Number of Cycle', fontsize=13)
                ax.set_ylabel('DIscharge Capacity (Ah)', fontsize=13)
                self.canv.draw()

            plot(inv_testPredict, cycle=data)





        except Exception as e:
            pass

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.groupBox.setTitle(_translate("MainWindow", "Parameters"))
        self.Data.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:9pt;\">Data</span></p></body></html>"))
        self.Cycle.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:10pt;\">Cycle</span></p></body></html>"))
        self.pushButton.setText(_translate("MainWindow", "PREDICT"))
        self.label.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:14pt; font-weight:600;\">Remaining Useful Life Plot</span></p></body></html>"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

