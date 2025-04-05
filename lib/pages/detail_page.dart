import 'package:flutter/material.dart';
import '../model/data_perpustakaan.dart';

class DetailScreen extends StatefulWidget {
  final Perpustakaan perpuss;

  const DetailScreen({super.key, required this.perpuss});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late final Perpustakaan perpustakaan;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    perpustakaan = widget.perpuss;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: perpustakaan.nama,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      child: Image.asset(
                        perpustakaan.gambarUtama,
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.black38,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      perpustakaan.nama,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Staatliches',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      perpustakaan.alamat,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _infoItem(Icons.calendar_today, perpustakaan.hariBuka),
                          _infoItem(Icons.access_time, perpustakaan.jamOperasional),
                          _infoItem(Icons.star, "${perpustakaan.rating} / 5"),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _infoFasilitas(Icons.wifi, 'WiFi', perpustakaan.tersediaWifi),
                          _infoFasilitas(Icons.book, 'Read Room', perpustakaan.ruangBaca),
                          _infoFasilitas(Icons.group, 'Discus Room', perpustakaan.tersediaRuangDiskusi),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    
                    SizedBox(height: 12),
                    _judul('Deskripsi'),
                    SizedBox(height: 8),
                    Text(
                      perpustakaan.deskripsi,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 24),
                    _judul('Kategori Buku Unggulan'),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: perpustakaan.kategoriBukuUnggulan.map((kategori) {
                        return Chip(
                          label: Text(kategori),
                          backgroundColor: Colors.lightBlue.shade100,
                          elevation: 2,
                          shadowColor: Colors.grey[400],
                        );
                      }).toList(),
                    ),

                    SizedBox(height: 24),
                    _judul('Daftar Buku'),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: perpustakaan.daftarBuku.map((buku) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("• $buku", style: const TextStyle(fontSize: 14)),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 24),

                    _judul('Jumlah Koleksi'),
                    SizedBox(height: 8),
                    Text(
                      '${perpustakaan.jumlahKoleksi} buku',
                      style: const TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 24),

                    _judul('Galeri'),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: perpustakaan.galeriGambar.length,
                      itemBuilder: (context, index) {
                        return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: SizedBox(
                          width: 200,
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              perpustakaan.galeriGambar[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );

                      },
                    ),
                    ),
                    SizedBox(height: 24),
                    
                    _judul('Kontak & Website'),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.phone, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(perpustakaan.kontak),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.language, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(perpustakaan.website),
                      ],
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 28, color: Colors.deepOrange),
        SizedBox(height: 4),
        Text(text, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _infoFasilitas(IconData icon, String label, bool tersedia) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(height: 8),
          Text(
            "$label: ${tersedia ? 'Tersedia' : 'Tidak'}",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _judul(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
