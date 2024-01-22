//program kalkulator
/*
Nama Dike Kartika
ART 241 - 50039
22-01-2024
*/

import 'dart:io';

void main() {
  print("Mulai kalkulator [y]? ");
  String? kalkulator = stdin.readLineSync();

  switch (kalkulator) {
    case "y":
      print('Kalkulator');
      print('NIP: ART 241 - 50039');
      print('Menu :');
      print('1. Penambahan');
      print('2. Perkalian');
      print('3. Sebutkan makanan favorite anda?');
      print('4. Sebutkan rumus menghitung kubus? \n');
      print('Pilihan ?');

      String? pilihan = stdin.readLineSync();

      switch (pilihan) {
        case "1":
          print("masukan nilai A :");
          double a = double.parse(stdin.readLineSync()!);

          print("masukan nilai B :");
          double b = double.parse(stdin.readLineSync()!);
          double hasil = a + b;
          print('Hasil = $hasil');
          //print("Kembali ke awal?");
          //String? kalkulator = stdin.readLineSync();
          break;
        case "2":
          print("masukan nilai A :");
          double a = double.parse(stdin.readLineSync()!);

          print("masukan nilai B :");
          double b = double.parse(stdin.readLineSync()!);
          double hasil = a * b;
          print('Hasil = $hasil');
          break;
        case "3":
          String? makanan = stdin.readLineSync();
          print("Jawaban anda $makanan");
          break;
        case "4":
          String? rumus = stdin.readLineSync();
          print("Jawaban anda $rumus");
          break;
        default:
          print("pilihan menu belum dipilih atau tidak ada");
          break;
      }
      break;
    default:
      print("pilihan menu belum dipilih atau tidak ada");
      break;
  }
}
