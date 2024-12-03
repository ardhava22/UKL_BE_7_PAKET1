import 'package:flutter/material.dart';

class Spotlight extends StatelessWidget {
  Spotlight({Key? key}) : super(key: key);

  final List<NewsItem> newsItems = [
    NewsItem(
      imageUrl: 'assets/Spotlight1.jpg',
      title: 'FIlm baru 2024 "Agak Laen"!!',
      views: 1.209,
      comments: 90,
    ),
    NewsItem(
      imageUrl: 'assets/Spotlight2.jpg',
      title: 'Menegangkan dan Mencekam, Lampir Masuk Top 10',
      views: 3.391,
      comments: 568,
    ),
    NewsItem(
      imageUrl: 'assets/Spotlight3.jpg',
      title: 'Film Yang Recomended Rilis baru baru ini',
      views: 971,
      comments: 93,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Spotlight',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Berita hiburan terhangat untuk Anda!',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: newsItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index != newsItems.length - 1 ? 12.0 : 0,
                ),
                child: NewsCard(item: newsItems[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class NewsItem {
  final String imageUrl;
  final String title;
  final double views;
  final int comments;

  NewsItem({
    required this.imageUrl,
    required this.title,
    required this.views,
    required this.comments,
  });
}

class NewsCard extends StatelessWidget {
  final NewsItem item;

  const NewsCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              item.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      item.views.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      item.comments.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}