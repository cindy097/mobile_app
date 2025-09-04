import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/data/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About Us", style: AppTextStyles.heading1),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radius),
              child: Image.asset(
                "assets/images/carousel2.jpg", // ganti sesuai gambar kamu
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "CyberLabs adalah perusahaan Digital Marketing yang didirikan pada tahun 2014 "
                  "yang berfokus dalam proses konsultasi digital marketing, pembuatan website, "
                  "pembuatan aplikasi Android dan juga pembuatan aplikasi IOS.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),
            Text(
              "Dalam perjalanannya CyberLabs telah melayani lebih dari 500 klien yang berasal "
                  "dari kalangan personal, usaha kecil menengah (UKMM), perusahaan multinasional hingga internasional.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),
            Text(
              "Tidak hanya itu CyberLabs telah mendapatkan beberapa penghargaan dan telah diliput oleh "
                  "beberapa media lokal dan nasional sebagai perusahaan yang menyediakan layanan teknologi "
                  "yang inovatif karena telah banyak membantu pelaku bisnis di Indonesia.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),
            Text(
              "Memiliki visi menjadi perusahaan yang dapat menyediakan solusi digital marketing "
                  "dan teknologi tepat guna kepada sebanyak banyaknya masyarakat di dunia.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),
            Text(
              "CyberLabs menyediakan layanan dan juga produk diantaranya adalah sbb :",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 16),

            /// Section a
            Text("a. C.A.S (CyberLabs Application Service)",
                style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              "C.M.S adalah sebuah layanan yang khusus diperuntukan bagi Anda yang memiliki kebutuhan "
                  "khusus dalam proses pembuatan website dan juga aplikasi mobile secara custome di luar "
                  "dari skop produk yang kami miliki. Jika Anda membutuhkan layanan yang berbeda dari yang "
                  "lainnya baik dari segi teknologi dan juga desain maka layanan C.A.S ini sangat cocok untuk Anda.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),

            /// Section b
            Text("b. C.M.S (CyberLabs Marketing Service)",
                style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              "Yaitu sebuah layanan konsultasi digital marketing bagi Anda yang memiliki kebutuhan khusus "
                  "atau masih bingung mengenai cara mengoptimalkan bisnis secara digital melalui media internet. "
                  "Layanan ini berfokus pada internet marketing, dimana dengan layanan ini maka Anda bisa mengetahui "
                  "kebutuhan digital marketing apa yang cocok dengan bisnis yang Anda jalankan, apakah untuk kebutuhan "
                  "branding, transaksi online atau kebutuhan lainnya.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 16),

            Text("Produk CyberLabs :", style: AppTextStyles.heading2),
            const SizedBox(height: 12),

            Text("a. HYDRO", style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "HYDRO adalah Business to Business (B to B) marketplace yang mempertemukan antara pemilik produk "
                  "dengan para online marketer yang siap membantu memasarkan produk para produsen secara online.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),

            Text("b. ATOM", style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "ATOM adalah sebuah system yang dapat membantu Anda untuk mengembangkan aplikasi mobile profile "
                  "dan toko online berbasis Android/IOS dengan sangat mudah dan cepat tanpa Anda harus memahami akan kode pemrograman.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 12),

            Text("c. MOLECULE", style: AppTextStyles.body.copyWith(fontWeight: FontWeight.bold)),
            Text(
              "MOLECULE adalah sebuah layanan yang berfokus menyediakan layanan social media management, "
                  "sangat cocok bagi Anda yang memiliki keterbatasan waktu dan kemampuan untuk membuat konten social media seperti feed Instagram.",
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 16),

            Text(
              "Dengan layanan dan produk yang disediakan oleh Cyberlabs di atas diharapkan bisnis Anda berkembang dengan lebih optimal.",
              style: AppTextStyles.body,
            ),
          ],
        ),
      ),
    );
  }
}
