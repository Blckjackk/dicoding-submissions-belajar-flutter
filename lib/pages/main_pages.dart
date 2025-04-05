import 'package:flutter/material.dart';
import 'package:perpustakaan_azzam/model/data_perpustakaan.dart';
import 'detail_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perpustakaan',
            style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        foregroundColor: Colors.white,
        elevation: 2,
        
      ),
      body: const PerpusListScreen(),
    );
  }
}

class PerpusListScreen extends StatefulWidget {
  const PerpusListScreen({super.key});

  @override
  State<PerpusListScreen> createState() => _PerpusListScreenState();
}

class _PerpusListScreenState extends State<PerpusListScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: perpustakaanList.length,
      itemBuilder: (context, index) {
        final perpustakaan = perpustakaanList[index];

        return Column(
          children: [
            _PerpusCard(context, perpustakaan),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }

  Widget _PerpusCard(BuildContext context, perpustakaan) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailScreen(perpuss: perpustakaan),
          ),
        );
      },

      child: Card(
        elevation: 2,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                  ),
                  child: Image.asset(
                    perpustakaan.gambarUtama,
                    width: double.infinity,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star,
                            size: 16, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          '${perpustakaan.rating}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          perpustakaan.nama,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      if (perpustakaan.tersediaWifi)
                        _iconBadge(Icons.wifi, Colors.blue),
                      if (perpustakaan.ruangBaca)
                        _iconBadge(Icons.menu_book_sharp, Colors.purple),
                      if (perpustakaan.tersediaRuangDiskusi)
                        _iconBadge(Icons.spatial_tracking_outlined, Colors.purple),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          perpustakaan.alamat,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kategori Unggulan:',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[200],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              perpustakaan.kategoriBukuUnggulan
                                  .take(2)
                                  .join(', '),
                              style: const TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue.shade200),
                        ),
                        child: Text(
                          perpustakaan.jamOperasional,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[200],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconBadge(IconData icon, MaterialColor color) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
        color: color.shade50,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Icon(icon, size: 14, color: color[600]),
    );
  }

}
