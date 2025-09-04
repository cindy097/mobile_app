import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/data/constants.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  final List<Map<String, String>> newsList = const [
    {
      'image': 'assets/images/news1.jpg',
      'title':
      'Pelatihan Pembuatan Toko Online dan SEO Bagi Guru SMK Bakti Nusantara 666 Dalam Program SMK PK',
      'content':
      'Beberapa waktu lalu Cyberlabs dipercaya oleh SMK Bakti Nusantara 666 Kab Bandung untuk melakukan pelatihan Digital Marketing dalam rangkaian SMK PK.'
    },
    {
      'image': 'assets/images/news2.jpg',
      'title':
      'Coaching Clinic ke 5 UKM Incubator Unpad Oorange Bersama Kemenkop dan CyberLabs',
      'content':
      'Coaching clinic merupakan serangkaian coaching yang diadakan oleh Kemenkop bersama Oorange dengan menggandeng Cyberlabs.'
    },
    {
      'image': 'assets/images/news3.jpg',
      'title':
      'CyberLabs Menerima Siswa PKL Jurusan Bisnis Daring dari SMKN 5 Pasanggaran',
      'content':
      'Beberapa hari lalu Cyberlabs menerima 15 siswa PKL Jurusan Bisnis Daring dan Pemasaran dari SMKN 5 Pasanggaran.'
    },
    {
      'image': 'assets/images/news4.jpg',
      'title':
      'Guru Tamu Dalam Program SMK PK Antara CyberLabs Dengan SMK Bina Putra Purwakarta',
      'content':
      'Dalam program SMK Pusat Keunggulan, Cyberlabs dipercaya oleh SMK Bina Putra Bina Putra untuk hadir sebagai guru tamu.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "News",
                style: AppTextStyles.heading1,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.62,
                  ),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return _buildNewsCard(
                      news['image']!,
                      news['title']!,
                      news['content']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard(String imagePath, String title, String content) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0), // padding dalam
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Gambar 1:1 dengan rounded semua sisi
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1, // ✅ kotak 1:1
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // ✅ Judul
            Text(
              title,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: AppColors.primary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),

            // ✅ Konten
            Text(
              content,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: AppColors.textPrimary,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),

            // ✅ "Read More" sebagai LINK
            Text(
              "Read More",
              style: AppTextStyles.link.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
