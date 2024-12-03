import 'package:flutter/material.dart';
import 'package:ukl_2024/Widgets/Appbar.dart';
import 'package:ukl_2024/Widgets/Navbar.dart';

class Tiketku extends StatelessWidget {
  const Tiketku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: 
      Topbar(),
        body: Column(
        children: [
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      const SizedBox(width: 8),
                      const Text(
                        'JAKARTA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                      const Icon(Icons.keyboard_arrow_down),
                      const Spacer(),
                ],
              ),
            ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                MovieCard(
                  title: 'BILA ESOK IBU TIADA',
                  rating: '9.5',
                  genre: 'Drama',
                  ageRating: 'R 13+',
                  imageUrl: 'assets/Poster1.jpg',
                ),
                const SizedBox(height: 16),
                MovieCard(
                  title: 'SEKAWAN LIMO',
                  rating: '9.3',
                  genre: 'Adventure, Horror, Komedi',
                  ageRating: 'R 13+',
                  imageUrl: 'assets/Poster2.png',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(3),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String rating;
  final String genre;
  final String ageRating;
  final String imageUrl;

  const MovieCard({
    Key? key,
    required this.title,
    required this.rating,
    required this.genre,
    required this.ageRating,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        ageRating,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      genre,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
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
  