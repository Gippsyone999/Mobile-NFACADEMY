//mobil.dart – Berisi class Mobil, turunan dari Kendaraan
import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;

  Mobil(String merk, int tahun, this.jumlahPintu) : super(merk, tahun);

  @override
  void tampilkanInfo() {
    print('Mobil: $merk ($tahun) - $jumlahPintu Pintu');
  }

  @override
  void lakukanServis() {
    print('Servis mobil $merk dilakukan.');
  }
}