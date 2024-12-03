import 'package:flutter/material.dart';

class NewsItem {
  final String title;
  final String views;
  final String likes;
  final String time;
  final String imageUrl;

  NewsItem({
    required this.title,
    required this.views,
    required this.likes,
    required this.time,
    required this.imageUrl,
  });
}

class Berita extends StatelessWidget {
  Berita({Key? key}) : super(key: key);

  final List<NewsItem> newsItems = [
    NewsItem(
      title: "10 Tahun Berlalu, Potret Nostalgia Para Pemain Film 5CM",
      views: "1.239.912",
      likes: "567",
      time: "2 jam lalu",
      imageUrl: "assets/Berita1.jpg",
    ),
    NewsItem(
      title: "Sekawan Limo senafas dengan Agak Laen, mampu menciptakan cerita yang universal meski latar belakang kedaerahannya kental.'",
      views: "1K",
      likes: "9",
      time: "3 hari lalu",
      imageUrl: "assets/Poster2.png",
    ),
    NewsItem(
      title: "Moana 2 Langsung Cetak Rekor Saat Debut Box Office",
      views: "792",
      likes: "15",
      time: "4 hari lalu",
      imageUrl: "assets/Moana.jpg",
    ),
    NewsItem(
      title: "Sutradara Muhakdly Acho Kasih Bocoran Film AGAK LAEN 2",
      views: "1K",
      likes: "5",
      time: "5 hari lalu",
      imageUrl: "assets/Spotlight1.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TIX Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Semua',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Update berita terbaru seputar dunia film',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          const Divider(height: 1),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: newsItems.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final item = newsItems[index];
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item.imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                '${item.views} views',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '${item.likes} likes',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                item.time,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'News',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}