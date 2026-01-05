# Double-Detectection-3-Bit
## Mata Kuliah
Design Soc dan FPGA
## Anggota kelompok 
1. Vhi Kania Dharmara Putri\1102220099
2. Fikri Naufal Hakim\1102220107
3. Muh. Grefi Alief Maulana\1102220232 

##DESKRIPSI
Tugas besar ini bertujuan untuk merancang dan mengimplementasikan sebuah sistem pendeteksi pola bit ganda (double detection) yaitu pola “001” dan “101” secara bersamaan menggunakan metode Finite State Machine (FSM). Sistem menerima masukan berupa aliran bit serial dan akan menghasilkan sinyal keluaran aktif ketika salah satu atau kedua pola bit tersebut terdeteksi. Implementasi dilakukan pada perangkat FPGA untuk memastikan sistem dapat bekerja secara real-time dan efisien. 

##Code Verilog
module doubledetection (
    input  wire clk,
    input  wire reset,
    input  wire x,
    output wire y
);

    reg q1, q2, q3;
    wire Q1_next, Q2_next, Q3_next;

    assign y = (~q1) & q2 & q3 & x;
    assign Q1_next = (q1 & x) | (q2 & x) | (~q1 & ~q2 & ~x);
    assign Q2_next = (q2 | q1) | x;
    assign Q3_next = (~x | q2) | q1;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q1 <= 1'b0;
            q2 <= 1'b0;
            q3 <= 1'b0;
        end else begin
            q1 <= Q1_next;
            q2 <= Q2_next;
            q3 <= Q3_next;
        end
    end

endmodule
