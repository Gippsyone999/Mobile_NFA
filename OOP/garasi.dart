import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> daftarKendaraan = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
    print("Menambahkan kendaraan ke garasi...");
  }

  void tampilkanKendaraan() {
    print("\nDaftar Kendaraan di Garasi:");
    for (var kendaraan in daftarKendaraan) {
      kendaraan.tampilkanInfo();
    }
  }

  void servisSemuaKendaraan() {
    print("\nMelakukan servis untuk semua kendaraan...");
    for (var kendaraan in daftarKendaraan) {
      kendaraan.servis();
    }
  }
}
