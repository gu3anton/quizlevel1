//program kalkulator
import 'dart:io';

void main() {
  print('Kalkulator');
  print('NIP: ART 241 - 50039');
  print('Menu :');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Hitung Zakat');
  print('4. Hitung Luas Kotak \n');
  print('Pilihan ?');

  //final pilihan = "";
  String? pilihan = stdin.readLineSync();

  switch (pilihan) {
    case "1":
      print("masukan nilai A :");
      double a = double.parse(stdin.readLineSync()!);
      print("masukan nilai B :");
      double b = double.parse(stdin.readLineSync()!);
      double hasil = a + b;
      print('Hasil = $hasil');
      break;
    case "2":
      print("perkalian");
      break;
    case "3":
      print("hitung zakat");
      break;
    case "4":
      print("hitung luas kotak");
      break;
    default:
      print("pilihan menu belum dipilih atau tidak ada");
      break;
  }
  //print(pilihan);
}
