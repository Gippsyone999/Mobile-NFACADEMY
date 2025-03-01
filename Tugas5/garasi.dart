// garasi.dart – Berisi class Garasi, untuk menyimpan daftar kendaraan
import 'kendaraan.dart'; 
class Garasi {
  List<Kendaraan> daftarKendaraan = [];

  // Menambahkan kendaraan ke garasi
  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
  }


  void tampilkanDaftarKendaraan() {
    print('Daftar Kendaraan di Garasi:\n'); 
    for (var kendaraan in daftarKendaraan) {
      kendaraan.tampilkanInfo();
    }
    print(''); 
  }

  void lakukanServisSemuaKendaraan() {
    print('Melakukan servis untuk semua kendaraan...\n'); 
    for (var kendaraan in daftarKendaraan) {
      kendaraan.lakukanServis();
    }
    print(''); 
  }
}