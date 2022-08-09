# Remaining Useful Life of Lithium Ion Battery Dashboard
Model machine learning yang digunakan merupakan hasil pengembangan Pusat Riset Sains Data dan Infromasi, Badan Riset dan Inovasi Nasional.

# Starter Guide
## Step 1: Download File
- Klik di sini untuk [download ZIP](https://github.com/huzaifi18/RUL_GUI/archive/refs/heads/main.zip), atau
- Clone git
    ```
    git clone https://github.com/huzaifi18/RUL_GUI.git
    ```
    
## Step 2: Instalasi Anaconda Environment
- Jalankan terminal anaconda
- Pastikan work directory berada pada di direktori RUL_GUI. Jika tidak, change directory (melalui terminal) ke folder kerja ini
    ```
    cd RUL_GUI/
    ```
- Jalankan command ini di Anaconda Terminal untuk menginstall environment `GUI`
    ```
    conda env create -f env.yml
    ```

## Step 3: Menjalankan Program
- Jalankan terminal
- Pastikan work directory berada pada di direktori RUL_GUI. Jika tidak, change directory (melalui terminal) ke folder kerja ini
    ```
    cd RUL_GUI/
    ```
- Aktifkan environment `GUI` menggunakan command berikut
    ```
    conda activate GUI
    ```
- Jalankan command berikut untuk menjalankan program
    ```
    python main_v2.2.py
    ```

## Step 4: Convert python to .exe (optional)
- Jalankan terminal
- Install package pyinstaller pada environment `GUI` menggunakan command
    ```
    pip install pyinstaller
    ```
- Build file .exe dengan menjalankan command
    ```
    pyinstaller -i icon.ico --onefile main_v2.2.py
    ```
- file .exe akan berada pada folder `dist`. Folder `build` dapat dihapus karena sudah tidak diperlukan
- pindahkan file .exe ke working directory
- file .exe bisa dijalankan
### NOTE:
folder backend harus selalu berdampingan dengan file .exe karena folder tersebut berisi model dan data