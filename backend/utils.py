from numpy.random import seed
seed(1)
import tensorflow as tf
tf.compat.v1.random.set_random_seed(1)

import numpy as np
from pandas import read_csv, DataFrame
import os
from sklearn.preprocessing import MinMaxScaler

def preprocess(dataset):
    scalers = {}
    for i in range(dataset.shape[1]):
      scalers[i] = MinMaxScaler(feature_range=(0, 1))
      dataset[:,i,:] = scalers[i].fit_transform(dataset[:,i,:])
    return dataset, scalers

def extract_VIT_capacity(x_datasets, y_datasets, seq_len, hop, sample):
    x = [] # VITC = inputs voltage, current, temperature (in vector) + capacity (in scalar)
    y = [] # target capacity (in scalar)
    z = [] # cycle index
    SS = [] # scaler
    VITC = [] # temporary input

    for x_data, y_data in zip(x_datasets, y_datasets):
        # Load VIT from charging profile
        x_df = read_csv(x_data).dropna()
        x_df = x_df[['cycle','voltage_battery','current_battery','temp_battery']]
        x_df['cycle'] = x_df['cycle']+1
        x_len = len(x_df.cycle.unique()) #- seq_len

        # Load capacity from discharging profile
        y_df = read_csv(y_data).dropna()
        y_df['cycle_idx'] = y_df.index+1
        y_df = y_df[['capacity', 'cycle_idx']]
        y_df = y_df.values # Convert pandas dataframe to numpy array
        y_df = y_df.astype('float32') # Convert values to float
        y_len = len(y_df) #- seq_len

        data_len = np.int32(np.floor((y_len - seq_len-1)/hop)) + 1
        for i in range(y_len):
            cy = x_df.cycle.unique()[i]
            df = x_df.loc[x_df['cycle']==cy]
            # Voltage measured
            le = len(df['voltage_battery']) % sample
            vTemp = df['voltage_battery'].to_numpy()
            if le != 0:
                vTemp = vTemp[0:-le]
            vTemp = np.reshape(vTemp, (len(vTemp)//sample,-1)) #, order="F")
            vTemp = vTemp.mean(axis=0)
            # Current measured
            iTemp = df['current_battery'].to_numpy()
            if le != 0:
                iTemp = iTemp[0:-le]
            iTemp = np.reshape(iTemp, (len(iTemp)//sample,-1)) #, order="F")
            iTemp = iTemp.mean(axis=0)
            # Temperature measured
            tTemp = df['temp_battery'].to_numpy()
            if le != 0:
                tTemp = tTemp[0:-le]
            tTemp = np.reshape(tTemp, (len(tTemp)//sample,-1)) #, order="F")
            tTemp = tTemp.mean(axis=0)
            # Capacity measured
            cap = np.array([y_df[i, 0]])
            # Combined
            VITC_inp = np.concatenate((vTemp, iTemp, tTemp, cap))
            VITC.append(VITC_inp)

        # Normalize using MinMaxScaler
        df_VITC = DataFrame(VITC).values
        scaled_x, scaler = preprocess(df_VITC[:, :, np.newaxis])
        scaled_x = scaled_x.astype('float32')[:, :, 0] # Convert values to float

        # Create input data
        for i in range(data_len):
            x.append(scaled_x[(hop*i):(hop*i+seq_len), :])
            y.append(scaled_x[hop*i+seq_len, -1])
        SS.append(scaler)
    return np.array(x), np.array(y)[:, np.newaxis], SS

def getData(dataPath):
    pth = dataPath
    test_x_data = [os.path.join(pth, 'charge/test', f) for f in os.listdir(os.path.join(pth, 'charge/test'))]
    test_y_data = [os.path.join(pth, 'discharge/test', f) for f in os.listdir(os.path.join(pth, 'discharge/test'))]
    return (test_x_data, test_y_data)