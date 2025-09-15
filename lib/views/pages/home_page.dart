import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/data/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pkl_cyberlabs/views/widget_tree.dart';
import 'package:pkl_cyberlabs/data/news_data.dart';
import 'package:pkl_cyberlabs/views/pages/details_news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentCarouselIndex = 0;

  final List<String> carouselImages = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.jpg',
    'assets/images/carousel3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCarousel(),
          const SizedBox(height: 24),
          _buildAboutUsSection(),
          const SizedBox(height: 24),
          _buildNewsSection(),
        ],
      ),
    );
  }
  Widget _buildCarousel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.radius),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentCarouselIndex = index;
                });
              },
            ),
            items: carouselImages.map((imagePath) {
              return Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(carouselImages.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentCarouselIndex == index
                    ? AppColors.primary
                    : Colors.grey[300],
              ),
            );
          }),
        ),
      ],
    );
  }


  Widget _buildAboutUsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Us', style: AppTextStyles.heading1),
        const SizedBox(height: 8),
        Text(
          'Cyberlabs adalah perusahaan Digital Marketing yang didirikan pada tahun 2014 yang berfokus dalam proses konsultasi digital marketing, pembuatan website, pembuatan aplikasi Android dan juga pembuatan aplikasi iOS.',
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WidgetTree(initialIndex: 2),
              ),
            );
          },
          child: const Text('Read More', style: AppTextStyles.link),
        ),
      ],
    );
  }


  Widget _buildNewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('News', style: AppTextStyles.heading1),
        const SizedBox(height: 16),
        Column(
          children: newsData.map((news) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: _buildNewsCard(news),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildNewsCard(NewsItem news) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(news.image, width: 130, height: 130, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                news.title,
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                news.content,
                style: AppTextStyles.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailNewsPage(
                        title: news.title,
                        image: news.image,
                        content: news.content,
                        date: news.date,
                        author: news.author,
                      ),
                    ),
                  );
                },
                child: const Text('Read More', style: AppTextStyles.link),
              ),
            ],
          ),
        )
      ],
    );
  }
}
