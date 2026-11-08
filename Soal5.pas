program Soal5;
uses crt;
var 
    n, i : integer;                // Variabel Global

function Fibonacci(k : integer) : longint; // Menentukan Suku Fibonacci
var
    a,b,c,j : longint;             // Variavel Lokal
begin
    if k <= 2 then                 // Jika Suku ke - 1 dan ke - 2
    Fibonacci := 1  
else                               // Jika Suku ke - 3 dan seterusnya
begin
    a := 1;                        // Suku ke - 1       
    b := 1;                        // Suku ke - 2
    for j := 3 to k do 
    begin
    c := a + b;                    // Menentukan Suku Selanjutnya
    a := b;                        // Maju Satu Suku Sebelum b
    b := c;                        // Maju Satu Suku Sebelum c
    end;
    Fibonacci := b;                // Suku ke - k
    end;
end;

function KaliDua(k : integer) : longint; // Menentukan Suku Perkalian Dua
var
    j : integer;     // Variavel Lokal
    hasil : longint; // Variavel Lokal
begin
    hasil := 1;                     // Suku ke - 1
    for j := 2 to k do 
        hasil := hasil * 2;
    KaliDua := hasil;               // Suku ke - k
end;

function Kuadrat(k : integer) : longint; // Menentukan Suku Kuadrat
begin
    Kuadrat := k * k;               // Suku ke - k
end;

function KaliBerurutan(k : integer) : longint; // Menentukan Perkalian Berurutan 
begin
    KaliBerurutan := k * (k + 1);   // Suku ke - k
end;

begin
clrscr;
    write('Masukkan Batas Suku: '); // Input Batas Suku 
    readln(n);

    write('a. ' );                   // Suku Fibonacci
    for i := 1 to n do                // Pengulangan Sampai Suku ke - n
    begin
        write(Fibonacci(i));          // Memanggil Function Fibonacci
        if i < n then write( ' , ' ); // Jika Suku Lebih Kecil daripada Suku ke - n maka dibatasi " , "
    end;
    writeln;

    write('b. ' );                   // Suku Perkalian Dua
    for i := 1 to n do                // Pengulangan Sampai Suku ke - n
    begin
        write(KaliDua(i));            // Memanggil Function KaliDua
        if i < n then write( ' , ');  // Jika Suku Lebih Kecil daripada Suku ke - n maka dibatasi " , "
    end;
    writeln;

    write('c. ' );                    // Suku Kuadrat
    for i := 1 to n do                 // Pengulangan Sampai Suku ke - n
    begin
        write(Kuadrat(i));             // Memanggil Function Kuadrat
        if i < n then write( ' , ' );  // Jika Suku Lebih Kecil daripada Suku ke - n maka dibatasi " , "
    end;
    writeln;

    write('d. ' );                    // Suku Kali Berurutan
    for i := 1 to n do                 // Pengulangan Sampai Suku ke - n
    begin
        write(KaliBerurutan(i));       // Memanggil Function KaliBerurutan
        if i < n then write( ' , ' );  // Jika Suku Lebih Kecil daripada Suku ke - n maka dibatasi " , "
    end;
    writeln;
    readln;
end.