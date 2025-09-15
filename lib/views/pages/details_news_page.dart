import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/data/constants.dart';
import 'package:pkl_cyberlabs/views/widgets/custom_app_bar.dart';
import 'package:pkl_cyberlabs/views/widgets/custom_navbar.dart';

class DetailNewsPage extends StatelessWidget {
  final String title;
  final String image;
  final String content;
  final String date;
  final String author;

  const DetailNewsPage({
    super.key,
    required this.title,
    required this.image,
    required this.content,
    required this.date,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyles.heading1),
            const SizedBox(height: 12),

            Text(
              "Diposting oleh : $author - $date",
              style: AppTextStyles.body.copyWith(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radius),
              child: Image.asset(image),
            ),
            const SizedBox(height: 20),

            Text(
              content,
              style: AppTextStyles.body.copyWith(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        currentIndex: 1, // karena ini detail dari NewsPage, index 1
        onTap: (index) {
          // navigasi ke halaman utama kalau mau
          // misal kalau index != 1, pop detail dulu baru pindah halaman
          if (index != 1) {
            Navigator.pop(context);
            // lalu pindah ke halaman lain di WidgetTree
            // atau kamu bisa gunakan Navigator.of(context).pushReplacementNamed(...)
          }
        },
      ),
    );
  }
}