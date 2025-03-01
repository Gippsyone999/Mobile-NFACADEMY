import 'dart:io';

void main() {
  // Meminta input nama dari pengguna
  stdout.write('Masukan nama:\n');
  String nama = stdin.readLineSync()!;

  // Meminta input nilai dari pengguna
  stdout.write('Masukan nilai:\n');
  int nilai = int.parse(stdin.readLineSync()!);

  // menggunakan if-else
  String kategoriIfElse;
  if (nilai >= 90) {
    kategoriIfElse = 'A - Sangat Baik';
  } else if (nilai >= 80) {
    kategoriIfElse = 'B - Baik';
  } else if (nilai >= 70) {
    kategoriIfElse = 'C - Cukup';
  } else if (nilai >= 60) {
    kategoriIfElse = 'D - Kurang';
  } else {
    kategoriIfElse = 'E - Gagal';
  }

  // menggunakan switch-case
  String kategoriSwitchCase;
  int range = nilai ~/ 10; 
  switch (range) {
    case 10:
    case 9:
      kategoriSwitchCase = 'A';
      break;
    case 8:
      kategoriSwitchCase = 'B';
      break;
    case 7:
      kategoriSwitchCase = 'C';
      break;
    case 6:
      kategoriSwitchCase = 'D';
      break;
    default:
      kategoriSwitchCase = 'E';
  }

  // Menampilkan hasil
  print('\nNama: $nama');
  print('Nilai: $nilai');
  print('Kategori Untuk If-Else: $kategoriIfElse');
  print('Kategori Untuk Switch-Case: $kategoriSwitchCase');
}