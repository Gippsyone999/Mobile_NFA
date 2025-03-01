import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  Garasi garasi = Garasi();

  garasi.tambahKendaraan(Mobil("Toyota Camry", 2022, 4));
  garasi.tambahKendaraan(Motor("Yamaha R15", 2020, false));

  garasi.tampilkanKendaraan();

  garasi.servisSemuaKendaraan();
}
