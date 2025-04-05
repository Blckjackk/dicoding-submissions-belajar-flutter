class Perpustakaan {
  final String nama;
  final String alamat;
  final String deskripsi;
  final List<String> daftarBuku;
  final String jamOperasional;
  final String hariBuka;
  final double rating;
  final String gambarUtama;
  final List<String> galeriGambar;
  final bool tersediaWifi;
  final bool ruangBaca;
  final String kontak;
  final String website;
  final int jumlahKoleksi;
  final bool tersediaRuangDiskusi;
  final List<String> kategoriBukuUnggulan;

  Perpustakaan({
    required this.nama,
    required this.alamat,
    required this.deskripsi,
    required this.daftarBuku,
    required this.jamOperasional,
    required this.hariBuka,
    required this.rating,
    required this.gambarUtama,
    required this.galeriGambar,
    required this.tersediaWifi,
    required this.ruangBaca,
    required this.kontak,
    required this.website,
    required this.jumlahKoleksi,
    required this.tersediaRuangDiskusi,
    required this.kategoriBukuUnggulan,
  });
}

// disini kita tambahkan data dummy nya karna kita belum belajar databse 
List<Perpustakaan> perpustakaanList = [
  Perpustakaan(
    nama: "Perpustakaan Nasional Republik Indonesia",
    alamat: "Jl. Medan Merdeka Selatan No.11, Jakarta Pusat",
    deskripsi:
        "Perpustakaan Nasional RI adalah perpustakaan terbesar di Indonesia dengan fasilitas canggih dan koleksi lengkap dari seluruh penjuru Nusantara, termasuk manuskrip kuno dan arsip nasional.",
    daftarBuku: [
      "Indonesia dalam Arus Sejarah - Kemendikbud",
      "Ensiklopedia Indonesia - Hassan Shadily",
      "Sejarah Nasional Indonesia - Marwati Djoened"
    ],
    jamOperasional: "08.00 - 20.00",
    hariBuka: "Senin - Sabtu",
    rating: 4.9,
    gambarUtama: "assets/images/perpus1.jpeg",
    galeriGambar: [
      "assets/images/perpus1-1.jpeg",
      "assets/images/perpus1-2.jpeg",
      "assets/images/perpus1-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "021-3810289",
    website: "https://perpusnas.go.id",
    jumlahKoleksi: 4000000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Sejarah", "Manuskrip", "Kebudayaan"]
  ),
  Perpustakaan(
    nama: "Perpustakaan UI Depok",
    alamat: "Kampus UI Depok, Pondok Cina, Depok",
    deskripsi:
        "Perpustakaan Universitas Indonesia memiliki koleksi ilmiah terbesar di kampus UI dan menyediakan layanan digital Perpustakaan, akses jurnal internasional, serta ruang diskusi dan seminar mahasiswa.",
    daftarBuku: [
      "Dasar-Dasar Statistik - Sudjana",
      "Mikrobiologi Kedokteran - Jawetz",
      "Akuntansi Keuangan Menengah - Kieso"
    ],
    jamOperasional: "08.00 - 21.00",
    hariBuka: "Senin - Jumat",
    rating: 4.8,
    gambarUtama: "assets/images/perpus2.jpeg",
    galeriGambar: [
      "assets/images/perpus2-1.jpeg",
      "assets/images/perpus2-2.jpeg",
      "assets/images/perpus2-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "021-7867222",
    website: "https://lib.ui.ac.id",
    jumlahKoleksi: 120000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Ilmu Sosial", "Kesehatan", "Ekonomi"]
  ),
  Perpustakaan(
    nama: "Perpustakaan ITB",
    alamat: "Jl. Ganesha No.10, Bandung",
    deskripsi:
        "Perpustakaan ITB mendukung riset di bidang teknik, sains, dan seni dengan menyediakan berbagai jurnal ilmiah, database elektronik, dan layanan e-learning untuk civitas akademika.",
    daftarBuku: [
      "Mekanika Teknik - J.L. Meriam",
      "Fisika Dasar - Halliday & Resnick",
      "Pengantar Teknologi Informasi - Turban"
    ],
    jamOperasional: "08.00 - 17.00",
    hariBuka: "Senin - Jumat",
    rating: 4.7,
    gambarUtama: "assets/images/perpus3.jpeg",
    galeriGambar: [
      "assets/images/perpus3-1.jpeg",
      "assets/images/perpus3-2.jpeg",
      "assets/images/perpus3-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "022-2500089",
    website: "https://lib.itb.ac.id",
    jumlahKoleksi: 80000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Teknik", "Sains", "Informatika"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Universitas Gadjah Mada",
    alamat: "Jl. Bulaksumur, Yogyakarta",
    deskripsi:
        "Perpustakaan UGM menjadi pusat informasi akademik dengan koleksi buku pendidikan tinggi terlengkap di Yogyakarta, serta menyediakan akses jurnal nasional dan internasional.",
    daftarBuku: [
      "Manajemen Pemasaran - Philip Kotler",
      "Statistik Untuk Penelitian - Sugiyono",
      "Ilmu Politik Indonesia - Miriam Budiardjo"
    ],
    jamOperasional: "08.00 - 20.00",
    hariBuka: "Senin - Sabtu",
    rating: 4.85,
    gambarUtama: "assets/images/perpus4.jpeg",
    galeriGambar: [
      "assets/images/perpus4-1.jpeg",
      "assets/images/perpus4-2.jpeg",
      "assets/images/perpus4-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "0274-6491921",
    website: "https://lib.ugm.ac.id",
    jumlahKoleksi: 100000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Politik", "Manajemen", "Pendidikan"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Universitas Airlangga",
    alamat: "Kampus C UNAIR, Jl. Mulyorejo, Surabaya",
    deskripsi:
        "Perpustakaan UNAIR menawarkan berbagai sumber literatur di bidang kesehatan, hukum, dan ekonomi. Dilengkapi dengan e-journal, e-thesis, dan layanan akses informasi digital.",
    daftarBuku: [
      "Hukum Pidana - Moeljatno",
      "Ilmu Kesehatan Masyarakat - Aziz Alimul",
      "Ekonomi Mikro - Sadono Sukirno"
    ],
    jamOperasional: "07.30 - 20.00",
    hariBuka: "Senin - Sabtu",
    rating: 4.75,
    gambarUtama: "assets/images/perpus5.jpeg",
    galeriGambar: [
      "assets/images/perpus5-1.jpeg",
      "assets/images/perpus5-2.jpeg",
      "assets/images/perpus5-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "031-5915551",
    website: "https://lib.unair.ac.id",
    jumlahKoleksi: 95000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Kesehatan", "Hukum", "Ekonomi"]
  ),
  Perpustakaan(
    nama: "Perpustakaan UNPAD Jatinangor",
    alamat: "Jl. Raya Bandung Sumedang KM.21, Jatinangor",
    deskripsi:
        "Perpustakaan Universitas Padjadjaran mendukung kebutuhan informasi akademik mahasiswa dengan menyediakan koleksi cetak dan digital serta ruang diskusi dan layanan referensi.",
    daftarBuku: [
      "Pengantar Ilmu Komunikasi - Deddy Mulyana",
      "Etika Profesi - Burhan Bungin",
      "Hukum Bisnis - Munir Fuady"
    ],
    jamOperasional: "08.00 - 19.00",
    hariBuka: "Senin - Jumat",
    rating: 4.7,
    gambarUtama: "assets/images/perpus6.jpeg",
    galeriGambar: [
      "assets/images/perpus6-1.jpeg",
      "assets/images/perpus6-2.jpeg",
      "assets/images/perpus6-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "022-84288888",
    website: "https://perpustakaan.unpad.ac.id",
    jumlahKoleksi: 88000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Hukum", "Komunikasi", "Etika"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Universitas Brawijaya",
    alamat: "Jl. Veteran, Malang",
    deskripsi:
        "Perpustakaan UB memiliki fasilitas modern termasuk layanan katalog online, koleksi skripsi dan tesis digital, serta ruang baca nyaman yang tersebar di berbagai fakultas.",
    daftarBuku: [
      "Pendidikan Pancasila - Kaelan",
      "Dasar-Dasar Akuntansi - Mulyadi",
      "Agribisnis Modern - Saragih"
    ],
    jamOperasional: "07.30 - 17.00",
    hariBuka: "Senin - Jumat",
    rating: 4.75,
    gambarUtama: "assets/images/perpus7.jpeg",
    galeriGambar: [
      "assets/images/perpus7-1.jpeg",
      "assets/images/perpus7-2.jpeg",
      "assets/images/perpus7-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "0341-551611",
    website: "https://lib.ub.ac.id",
    jumlahKoleksi: 93000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Pertanian", "Akuntansi", "Pancasila"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Universitas Hasanuddin",
    alamat: "Jl. Perintis Kemerdekaan KM.10, Makassar",
    deskripsi:
        "Perpustakaan Unhas mendukung kegiatan akademik dengan koleksi buku dan jurnal di bidang kelautan, kedokteran, teknik, dan sosial humaniora.",
    daftarBuku: [
      "Biologi Laut Tropis - Nybakken",
      "Kedokteran Dasar - Guyton",
      "Teknik Sipil Dasar - Purwanto"
    ],
    jamOperasional: "08.00 - 18.00",
    hariBuka: "Senin - Jumat",
    rating: 4.7,
    gambarUtama: "assets/images/perpus8.jpeg",
    galeriGambar: [
      "assets/images/perpus8-1.jpeg",
      "assets/images/perpus8-2.jpeg",
      "assets/images/perpus8-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "0411-585003",
    website: "https://Perpustakaan.unhas.ac.id",
    jumlahKoleksi: 85000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Kelautan", "Kedokteran", "Teknik"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Binus University",
    alamat: "Jl. Kebon Jeruk Raya No.27, Jakarta Barat",
    deskripsi:
        "Perpustakaan Binus dikenal dengan sistem digitalnya yang modern dan koleksi literatur mutakhir di bidang teknologi informasi, bisnis, dan desain.",
    daftarBuku: [
      "Desain Interaksi - Preece",
      "Manajemen Proyek IT - Schwalbe",
      "Big Data Analytics - Marr"
    ],
    jamOperasional: "08.00 - 18.00",
    hariBuka: "Senin - Jumat",
    rating: 4.7,
    gambarUtama: "assets/images/perpus9.jpeg",
    galeriGambar: [
      "assets/images/perpus9-1.jpeg",
      "assets/images/perpus9-2.jpeg",
      "assets/images/perpus9-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "021-5345830",
    website: "https://Perpustakaan.binus.ac.id",
    jumlahKoleksi: 60000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["IT", "Bisnis", "Desain"]
  ),
  Perpustakaan(
    nama: "Perpustakaan Universitas Negeri Malang",
    alamat: "Jl. Semarang No.5, Malang",
    deskripsi:
        "Perpustakaan UM merupakan pusat sumber belajar yang dilengkapi koleksi digital dan cetak untuk mendukung riset pendidikan dan pengajaran.",
    daftarBuku: [
      "Strategi Pembelajaran - Wina Sanjaya",
      "Psikologi Belajar - Syaiful Sagala",
      "Media Pembelajaran - Azhar Arsyad"
    ],
    jamOperasional: "08.00 - 16.00",
    hariBuka: "Senin - Jumat",
    rating: 4.7,
    gambarUtama: "assets/images/perpus10.jpeg",
    galeriGambar: [
      "assets/images/perpus10-1.jpeg",
      "assets/images/perpus10-2.jpeg",
      "assets/images/perpus10-1.jpeg"
    ],
    tersediaWifi: true,
    ruangBaca: true,
    kontak: "0341-551312",
    website: "https://Perpustakaan.um.ac.id",
    jumlahKoleksi: 72000,
    tersediaRuangDiskusi: true,
    kategoriBukuUnggulan: ["Pendidikan", "Psikologi", "Media Pembelajaran"]
  ),
];

