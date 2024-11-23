import 'package:flutter/material.dart';

class FooterNavigation extends StatelessWidget {
  final VoidCallback? onHomeTap; // Navigasi ke Dashboard
  final VoidCallback? onStatsTap; // Navigasi ke Statistik Beban Kerja
  final VoidCallback? onDocsTap;
  final VoidCallback? onActivitiesTap; // Navigasi ke Unduh Dokumen

  const FooterNavigation({
    this.onHomeTap,
    this.onStatsTap,
    this.onDocsTap,
    this.onActivitiesTap,
    Key? key,
  }) : super(key: key);

 @override
Widget build(BuildContext context) {
  return Container(
    color: Colors.blue[900], // Warna footer tetap seperti sebelumnya
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: onHomeTap, // Tombol Beranda
          child: _buildFooterItem("Beranda", Icons.home),
        ),
        GestureDetector(
          onTap: onStatsTap, // Tombol Statistik
          child: _buildFooterItem("Statistik Beban Kerja", Icons.bar_chart),
        ),
        GestureDetector(
          onTap: onDocsTap, // Tombol Unduh Dokumen
          child: _buildFooterItem("Unduh Dokumen", Icons.file_download),
        ),
        GestureDetector(
          onTap: onActivitiesTap, // Tombol Kegiatan
          child: _buildFooterItem("Kegiatan", Icons.event),
        ),
      ],
    ),
  );
}


  Widget _buildFooterItem(String label, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 24),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
