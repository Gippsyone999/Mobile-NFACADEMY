void main() {
  //  List untuk menyimpan daftar mahasiswa dengan minimal 5 nama.
  List<String> mahasiswa = [
    'Rizky',
    'Acong',
    'Gipari',
    'Raihan',
    'Xello'
  ];

  // Set untuk menyimpan mata kuliah unik yang diambil mahasiswa.
  Set<String> mataKuliah = {};

  // Map untuk menyimpan data mahasiswa dengan format Key and Value
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Rizky': { // Key
      'NIM': '0220999992',                             // Value
      'Mata Kuliah': ['Game Design', 'Game Artist'],  // Value
    },
    'Acong': {
      'NIM': '0220999995',
      'Mata Kuliah': ['Animasi', '3D Design'],
    },
    'Gipari': {
      'NIM': '0220999996',
      'Mata Kuliah': ['Digital Art', 'Illustrasi'],
    },
    'Raihan': {
      'NIM': '0220999993',
      'Mata Kuliah': ['Musik', 'Menggambar'],
    },
    'Xello': {
      'NIM': '0220999997',
      'Mata Kuliah': ['Javascript', 'C#'],
    },
  };

 
  for (var mk in dataMahasiswa.values) {
    mataKuliah.addAll(mk['Mata Kuliah']);
  }

  // Tambahkan satu mahasiswa baru beserta NIM dan daftar mata kuliahnya.
  mahasiswa.add('Ijab');
  dataMahasiswa['Ijab'] = {
    'NIM': '0220999991',
    'Mata Kuliah': ['Melukis', 'Kesenian'],
  };
  mataKuliah.addAll(dataMahasiswa['Ijab']!['Mata Kuliah']);

  // Hapus satu mahasiswa dari daftar.
  mahasiswa.remove('Xello');
  dataMahasiswa.remove('Xello');

  // Tampilkan daftar mahasiswa beserta NIM dan mata kuliahnya setelah perubahan.
  print('DAFTAR MAHASISWA:');
  for (var nama in mahasiswa) {
    print('Nama: $nama');
    print('NIM: ${dataMahasiswa[nama]!['NIM']}');
    print('Mata Kuliah: ${dataMahasiswa[nama]!['Mata Kuliah']}');
    print('======');
  }
}