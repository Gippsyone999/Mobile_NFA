import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool adaKeranjang;

  Motor(String merk, int tahun, this.adaKeranjang) : super(merk, tahun);

  @override
  void tampilkanInfo() {
    String keranjang = adaKeranjang ? "Dengan Keranjang" : "Tanpa Keranjang";
    print("- Motor: $merk ($tahun) - $keranjang");
  }

  @override
  void servis() {
    print("Servis motor $merk dilakukan.");
  }
}
