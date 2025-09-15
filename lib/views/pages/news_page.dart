import 'package:flutter/material.dart';
import 'package:pkl_cyberlabs/data/constants.dart';
import 'package:pkl_cyberlabs/data/news_data.dart';
import 'package:pkl_cyberlabs/views/pages/details_news_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
                  itemCount: newsData.length,
                  itemBuilder: (context, index) {
                    final news = newsData[index];
                    return _buildNewsCard(context, news);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, NewsItem news) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  news.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              news.title,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: AppColors.primary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),

            // Konten ringkas
            Expanded(
              child: Text(
                news.content,
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: AppColors.textPrimary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 2),

            // Tombol
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
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
            )
          ],
        ),
      ),
    );
  }
}
