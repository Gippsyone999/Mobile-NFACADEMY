// kendaraan.dart – Berisi abstract class Kendaraan
abstract class Kendaraan {
  String merk;
  int tahun;

  Kendaraan(this.merk, this.tahun);

  void tampilkanInfo();
  void lakukanServis();
}