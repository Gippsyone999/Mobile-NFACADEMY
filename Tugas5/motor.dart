// motor.dart – Berisi class Motor, turunan dari kendaraan 
import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool memilikiKeranjang;

  Motor(String merk, int tahun, this.memilikiKeranjang) : super(merk, tahun);

  @override
  void tampilkanInfo() {
    String keranjangInfo = memilikiKeranjang ? 'Dengan Keranjang' : 'Tanpa Keranjang';
    print('Motor: $merk ($tahun) - $keranjangInfo');
  }

  @override
  void lakukanServis() {
    print('Servis motor $merk dilakukan.');
  }
}