import 'package:flutter/material.dart';

void main() {
  runApp(const GaleriBarcelonaApp());
}

class GaleriBarcelonaApp extends StatelessWidget {
  const GaleriBarcelonaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeri Foto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const DetailFotoPage(),
    );
  }
}

class DetailFotoPage extends StatelessWidget {
  const DetailFotoPage({super.key});

  static const String imageUrl = 'https://picsum.photos/id/88/300/200';
  static const String description =
      'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan '
      'berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan '
      'pemandangan yang sibuk dan energik.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return const SizedBox(
                height: 200,
                child: Center(child: CircularProgressIndicator()),
              );
            },
            errorBuilder: (context, error, stackTrace) => Container(
              height: 200,
              color: Colors.grey.shade300,
              alignment: Alignment.center,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.broken_image, size: 40),
                  SizedBox(height: 8),
                  Text('Gambar gagal dimuat. Periksa koneksi internet.'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Jalan di Barcelona',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                const _InfoRow(
                  icon: Icons.place,
                  color: Colors.red,
                  text: 'Lokasi: Barcelona, Spanyol',
                ),
                const SizedBox(height: 8),
                const _InfoRow(
                  icon: Icons.calendar_month,
                  color: Colors.lightBlue,
                  text: 'Publikasi: 13 Agustus 2013',
                ),
                const SizedBox(height: 12),
                const Divider(height: 1),
                const SizedBox(height: 12),
                const Text(
                  'Deskripsi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 6),
                const Text(
                  description,
                  style: TextStyle(fontSize: 13, height: 1.25),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.color,
    required this.text,
  });

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 12))),
      ],
    );
  }
}
