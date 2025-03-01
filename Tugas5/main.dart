// main.dart – Program utama menjalankan sistem
import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  Garasi garasiSaya = Garasi();

  Mobil mobilSaya = Mobil('Toyota Camry', 2022, 4);
  Motor motorSaya = Motor('Yamaha R15', 2020, false);

  garasiSaya.tambahKendaraan(mobilSaya);
  garasiSaya.tambahKendaraan(motorSaya);

  garasiSaya.tampilkanDaftarKendaraan();
  garasiSaya.lakukanServisSemuaKendaraan();
}