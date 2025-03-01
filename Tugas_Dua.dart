void main() {
  List<String> mahasiswa = [
    "Padil",
    "Zaidan",
    "Ishaq",
    "Akmal",
    "Rian"
  ];

  Set<String> mataKuliahUnik = {
    "Matematika Komputer",
    "Basis Data",
    "Big Data",
    "Manajemen Proyek",
    "Cloud Computing"
  };

  Map<String, Map<String, dynamic>> dataMahasiswa = {
    "Padil": {"NIM": "011022221", "Mata Kuliah": ["Matematika Komputer", "Basis Data"]},
    "Zaidan": {"NIM": "011022222", "Mata Kuliah": ["Big Data", "Manajemen Proyek"]},
    "Ishaq": {"NIM": "011022223", "Mata Kuliah": ["Cloud Computing", "Matematika Komputer"]},
    "Akmal": {"NIM": "011022224", "Mata Kuliah": ["Basis Data", "Big Data"]},
    "Rian": {"NIM": "011022225", "Mata Kuliah": ["Manajemen Proyek", "Cloud Computing"]},
  };

  String mahasiswaBaru = "Ghifari";
  mahasiswa.add(mahasiswaBaru);
  dataMahasiswa[mahasiswaBaru] = {
    "NIM": "011022226",
    "Mata Kuliah": ["Matematika Komputer", "Cloud Computing"]
  };

  String mahasiswaDihapus = "Akmal";
  mahasiswa.remove(mahasiswaDihapus);
  dataMahasiswa.remove(mahasiswaDihapus);

  print("Daftar Mahasiswa setelah perubahan:");
  dataMahasiswa.forEach((nama, data) {
    print("Nama: $nama, NIM: ${data["NIM"]}, Mata Kuliah: ${data["Mata Kuliah"]}");
  });
}
