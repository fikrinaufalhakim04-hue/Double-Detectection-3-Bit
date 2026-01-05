Design Soc dan FPGA
## Anggota kelompok 
1. Vhi Kania Dharmara Putri\1102220099
2. Fikri Naufal Hakim\1102220107
3. Muh. Grefi Alief Maulana\1102220232
## Deskripsi
Tugas besar ini bertujuan untuk merancang dan mengimplementasikan sebuah sistem pendeteksi pola bit ganda (double detection) yaitu pola “001” dan “101” secara bersamaan menggunakan metode Finite State Machine (FSM). Sistem menerima masukan berupa aliran bit serial dan akan menghasilkan sinyal keluaran aktif ketika salah satu atau kedua pola bit tersebut terdeteksi. Implementasi dilakukan pada perangkat FPGA untuk memastikan sistem dapat bekerja secara real-time dan efisien. 
## Fungsi 
1. Mendeteksi kemunculan pola bit “001” dan “101”.
2. Memberikan keluaran logika sebagai indikator ketika pola terdeteksi. 
# Fitur dan Spesifikasi
## Fitur
1. Mendeteksi dua pola bit berbeda 001 dan 101
2. Proses dapat dimulai dari state manapun
3. Sistem dapat mendeteksi pola meskipun terjadi overlapping bit
4. Output berupa sinyal logika 1 saat pola “001” atau “101” terdeteksi, dan 0 jika tidak terdeteksi
## Spesifikasi
1. Input berubah 1 bit data serial (0 atau 1)
2. Panjang pola bit yang dideteksi adalah 3 bit
3. Menggunakan Finite State Machine tipe Mealy
4. Output berupa sinyal logika 1 saat pola “001” atau “101” terdeteksi, dan 0 jika tidak terdeteksi
# Cara Penggunaan
<img width="436" height="732" alt="fpgatb drawio" src="https://github.com/user-attachments/assets/aa402961-992a-4836-a490-ac21e2e22c8e" />
Flowchart menggambarkan alur kerja sistem pendeteksi pola bit 3-bit (001 dan 101) berbasis FSM Mealy. Sistem membaca input bit serial secara kontinu, memproses setiap bit untuk menentukan transisi state, dan menghasilkan output logika 1 ketika salah satu pola terdeteksi. Proses overlapping diterapkan sehingga bit sebelumnya dapat digunakan kembali untuk deteksi selanjutnya, dan sistem berjalan terus selama clock aktif. 

## Blok Diagram
![blok dd](https://github.com/user-attachments/assets/76b46c2c-52d5-426f-bd18-2d617bb0037b)

Blok diagram tersebut menggambarkan implementasi sistem pendeteksi urutan sequence detector pada perangkat keras FPGA, di mana data biner diterima bit demi bit melalui input dan diproses oleh logika state machine internal modul double detection 3-bit. FPGA bertugas memantau aliran data ini secara real-time menggunakan register internalnya, dan ketika rangkaian bit yang masuk cocok dengan pola spesifik yang dicari, sistem akan langsung memberikan sinyal aktif pada jalur output untuk menandakan bahwa pola sasaran telah ditemukan. 

## FSM
![fs](https://github.com/user-attachments/assets/4c819b0b-d199-434d-9bc0-7065facfa523)

## Desain Rangkaian 
<img width="742" height="253" alt="Screenshot 2026-01-05 091707" src="https://github.com/user-attachments/assets/9adb8467-8dd4-4ef2-bab1-a65496c3d40f" />

# Hasil Simulasi dan Analisis

![sm3](https://github.com/user-attachments/assets/0b85c56a-f93e-4d7f-8087-7e8c4f943125)

Gambar gelombang sinyal hasil testbench adalah bukti visual bahwa logika kode Verilog bekerja dengan baik. Sequence bit input yang digunakan adalah 0101101001 tergambar pada gambar di atas. Ketika terdeteksi input merupakan 001 atau 101, maka nilai output akan mengeluarkan 1 seperti pada gambar. 

# Lampiran Kode Verilog
## kode Verilog Base
![vv3](https://github.com/user-attachments/assets/58e4996f-3e57-4961-807e-01e0effd3011)

## Kode Verilog Test Bench
![tbb](https://github.com/user-attachments/assets/fae53e29-8cbb-42b2-b617-90cab6a7ba9c)

