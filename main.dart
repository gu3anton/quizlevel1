//program kalkulator
/*
Nama Dike Kartika
ART 241 - 50039
22-01-2024
*/

import 'dart:io';

void main() {
  utama();
}

void utama() {
  print('Kalkulator');
  print('NIP: ART 241 - 50039');
  print('Menu :');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Sebutkan makanan favorite anda?');
  print('4. Sebutkan rumus menghitung kubus luas persegi?');
  print('5. Exit? \n');
  print('Masukan pilihan ?');

  final pilihan = stdin.readLineSync();
  functioncalc(pilihan!);
}

String? functioncalc(String pilihan) {
  if (pilihan == '1') {
    print("masukan nilai A :");
    String? a = stdin.readLineSync();
    print("masukan nilai B :");
    String? b = stdin.readLineSync();
    tambah(a!, b!);
    utama();
  } else if (pilihan == '2') {
    print("masukan nilai A :");
    String? a = stdin.readLineSync();
    print("masukan nilai B :");
    String? b = stdin.readLineSync();
    kali(a!, b!);
    utama();
  } else if (pilihan == '3') {
    print("ketik jawaban : ");
    String? makanan = stdin.readLineSync();
    bersih();
    print("Jawaban anda $makanan \n");
    utama();
  } else if (pilihan == '4') {
    print("ketik jawaban : ");
    String? rumus = stdin.readLineSync();
    bersih();
    print("Jawaban anda $rumus \n");
    utama();
  } else if (pilihan == '5') {
    print('bye..');
  } else {
    bersih();
    print('Belum ada pilihan menu \n');
    utama();
  }
}

void tambah(String a, String b) {
  bersih();
  if ((double.tryParse(a) ?? 0) <= 0.0 || (double.tryParse(b) ?? 0) <= 0.0) {
    print('format salah, harus numerik \n');
  } else {
    double? n1 = double.tryParse(a);
    double? n2 = double.tryParse(b);
    var hasil = (n1! + n2!);
    print('Hasil $hasil \n');
  }
}

void bersih() {
  if (Platform.isWindows) {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
}

void kali(String a, String b) {
  bersih();
  if ((double.tryParse(a) ?? 0) <= 0.0 || (double.tryParse(b) ?? 0) <= 0.0) {
    print('format salah, harus numerik \n');
  } else {
    double? n1 = double.tryParse(a);
    double? n2 = double.tryParse(b);
    var hasil = (n1! * n2!);
    print('Hasil $hasil \n');
  }
}
