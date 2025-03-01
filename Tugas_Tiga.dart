import 'dart:io';

void main() {
  stdout.write("Masukkan nama: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan nilai: ");
  int nilai = int.parse(stdin.readLineSync()!);

  String kategoriIfElse;
  if (nilai >= 90) {
    kategoriIfElse = "A - Sangat Baik";
  } else if (nilai >= 80) {
    kategoriIfElse = "B - Baik";
  } else if (nilai >= 70) {
    kategoriIfElse = "C - Cukup";
  } else if (nilai >= 60) {
    kategoriIfElse = "D - Kurang";
  } else {
    kategoriIfElse = "E - Gagal";
  }

  String kategoriSwitch;
  switch (nilai ~/ 10) { // Nilai dibagi 10 untuk mendapatkan puluhan
    case 10:
    case 9:
      kategoriSwitch = "A";
      break;
    case 8:
      kategoriSwitch = "B";
      break;
    case 7:
      kategoriSwitch = "C";
      break;
    case 6:
      kategoriSwitch = "D";
      break;
    default:
      kategoriSwitch = "E";
  }

  print("\nNama: $nama");
  print("Nilai: $nilai");
  print("Kategori (if-else): $kategoriIfElse");
  print("Kategori (switch case): $kategoriSwitch");
}
