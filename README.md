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
## FSM
<img width="553" height="467" alt="FSM" src="https://github.com/user-attachments/assets/7a04f8e0-c557-45f0-a80d-d11695a6b439" />
## Desain Rangkaian 
<img width="742" height="253" alt="Screenshot 2026-01-05 091707" src="https://github.com/user-attachments/assets/9adb8467-8dd4-4ef2-bab1-a65496c3d40f" />
