import 'dart:io';


// untuk mengubah format angka
String formatRupiah(int angka) {
  String angkaStr = angka.toString();
  String hasil = "";
  int hitung = 0;
  
  for (int i = angkaStr.length - 1; i >= 0; i--) {
    hitung++;
    hasil = angkaStr[i] + hasil;
    if (hitung % 3 == 0 && i != 0) {
      hasil = "." + hasil;
    }
  }
  return "Rp $hasil";
}

// Menerima input jumlah pegawai dari pengguna.
void main() {
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);
  
// Tambahan agar bisa memasukan data pegawai
  List<Map<String, dynamic>> pegawaiList = [];
  List<String> jabatanTersedia = ['Manager', 'Supervisor', 'Staff'];
  
  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai-$i: ");
    String nama = stdin.readLineSync()!;
    print("Jabatan yang tersedia: ${jabatanTersedia.join(', ')}");
    stdout.write("Masukkan jabatan pegawai-$i: ");
    String jabatan = stdin.readLineSync()!;
    jabatan = jabatan.isNotEmpty ? jabatan[0].toUpperCase() + jabatan.substring(1) : "Tidak diketahui";
    int gaji = hitungGaji(jabatan);
    int tunjangan = hitungTunjangan(jabatan);
    pegawaiList.add({"id": i, "nama": nama, "jabatan": jabatan, "gaji": gaji, "tunjangan": tunjangan});
  }
  

// Menyimpan data pegawai dalam list, lalu menggunakan for-in dan foreach untuk mencetak data pegawai.
  // Menampilkan daftar pegawai menggunakan for-in
  print("\nDaftar Pegawai:");
  for (var p in pegawaiList) {
    print("[FOR-IN] ID: ${p['id'] * 10}, Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Gaji: ${formatRupiah(p['gaji'])}, Tunjangan: ${formatRupiah(p['tunjangan'])}");
  }
  
  // Menampilkan daftar pegawai menggunakan forEach
  print("\nDaftar Pegawai:");
  pegawaiList.forEach((p) => print("[FOREACH] ID: ${p['id']}, Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Gaji: ${formatRupiah(p['gaji'])}, Tunjangan: ${formatRupiah(p['tunjangan'])}"));
  
// Menampilkan daftar pegawai dengan ID genap dan ganjil
  print("\nPegawai dengan ID Genap:");
  pegawaiList.where((p) => p['id'] % 2 == 0).forEach((p) => print("ID: ${p['id']}, Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Gaji: ${formatRupiah(p['gaji'])}, Tunjangan: ${formatRupiah(p['tunjangan'])}"));
  
  print("\nPegawai dengan ID Ganjil:");
  pegawaiList.where((p) => p['id'] % 2 != 0).forEach((p) => print("ID: ${p['id']}, Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Gaji: ${formatRupiah(p['gaji'])}, Tunjangan: ${formatRupiah(p['tunjangan'])}"));
  
// Menggunakan fungsi dengan parameter untuk menghitung total gaji pegawai.
  int totalGaji = pegawaiList.fold(0, (sum, p) => sum + (p['gaji'] as int));
  print("\nTotal Gaji Pegawai: ${formatRupiah(totalGaji)}");
  
// Menggunakan fungsi rekursif untuk menghitung bonus tahunan pegawai berdasarkan jumlah tahun kerja
  int tahunKerja = 5;
  print("\nBonus untuk $tahunKerja tahun kerja: ${formatRupiah(hitungBonus(tahunKerja))}");
  
// Menggunakan arrow function untuk menghitung gaji bersih setelah pajak
  var gajiBersih = (int gaji) => gaji - (gaji * 0.1);
  print("\nGaji bersih setelah pajak:");
  pegawaiList.forEach((p) => print("ID: ${p['id']}, Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Gaji Bersih: ${formatRupiah(gajiBersih(p['gaji']).toInt())}"));
}

// Fungsi untuk menentukan gaji berdasarkan jabatan
int hitungGaji(String jabatan) {
  switch (jabatan) {
    case 'Manager': return 10000000;
    case 'Supervisor': return 7000000;
    case 'Staff': return 5000000;
    default: return 3000000;
  }
}

// Menggunakan fungsi dengan default parameter untuk menentukan tunjangan pegawai berdasarkan jabatan.
int hitungTunjangan(String jabatan, {int defaultTunjangan = 1000000}) {
  switch (jabatan) {
    case 'Manager': return 5000000;
    case 'Supervisor': return 3000000;
    case 'Staff': return 2000000;
    default: return defaultTunjangan;
  }
}

// Fungsi rekursif untuk menghitung bonus tahunan
int hitungBonus(int tahun) => (tahun == 0) ? 0 : 1000000 + hitungBonus(tahun - 1);