import 'dart:io';

void main() {
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> pegawaiList = [];

  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-$i: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan jabatan pegawai (Staff/Manager): ");
    String jabatan = stdin.readLineSync()!;

    stdout.write("Masukkan gaji pokok pegawai: ");
    double gajiPokok = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan tahun kerja pegawai: ");
    int tahunKerja = int.parse(stdin.readLineSync()!);

    pegawaiList.add({
      'id': i,
      'nama': nama,
      'jabatan': jabatan,
      'gajiPokok': gajiPokok,
      'tahunKerja': tahunKerja,
    });
  }

  print("\nDaftar Pegawai dengan ID Genap:");
  for (var pegawai in pegawaiList) {
    if (pegawai['id'] % 2 == 0) {
      print("ID: ${pegawai['id']}, Nama: ${pegawai['nama']}");
    }
  }

  print("\nDaftar Pegawai dengan ID Ganjil:");
  for (var pegawai in pegawaiList) {
    if (pegawai['id'] % 2 != 0) {
      print("ID: ${pegawai['id']}, Nama: ${pegawai['nama']}");
    }
  }

  print("\nData Pegawai:");
  for (var pegawai in pegawaiList) {
    print(pegawai);
  }

  for (var pegawai in pegawaiList) {
    print(
      "Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}, Gaji: ${pegawai['gajiPokok']}",
    );
  }

  double totalGaji = hitungTotalGaji(pegawaiList);
  print("\nTotal Gaji Pegawai: Rp$totalGaji");

  print("\nTunjangan Pegawai:");
  for (var pegawai in pegawaiList) {
    double tunjangan = hitungTunjangan(pegawai['jabatan']);
    print(
      "Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}, Tunjangan: Rp$tunjangan",
    );
  }

  print("\nBonus Tahunan Pegawai:");
  for (var pegawai in pegawaiList) {
    double bonus = hitungBonus(pegawai['tahunKerja']);
    print(
      "Nama: ${pegawai['nama']}, Tahun Kerja: ${pegawai['tahunKerja']}, Bonus: Rp$bonus",
    );
  }

  print("\nGaji Bersih Pegawai Setelah Pajak:");
  for (var pegawai in pegawaiList) {
    double gajiBersih = hitungGajiBersih(pegawai['gajiPokok']);
    print("Nama: ${pegawai['nama']}, Gaji Bersih: Rp$gajiBersih");
  }
}

double hitungTotalGaji(List<Map<String, dynamic>> pegawaiList) {
  double total = 0;
  for (var pegawai in pegawaiList) {
    total += pegawai['gajiPokok'];
  }
  return total;
}

double hitungTunjangan(
  String jabatan, [
  double tunjanganManager = 2000000,
  double tunjanganStaff = 1000000,
]) {
  return jabatan.toLowerCase() == "manager" ? tunjanganManager : tunjanganStaff;
}

double hitungBonus(int tahunKerja) {
  if (tahunKerja == 0) return 0;
  return 500000 + hitungBonus(tahunKerja - 1);
}

double hitungGajiBersih(double gajiPokok) => gajiPokok * 0.9;
