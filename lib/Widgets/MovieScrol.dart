  import 'package:flutter/material.dart';

  class MovieScrol extends StatelessWidget {
  const MovieScrol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
           Color.fromARGB(255, 70, 104, 137),
          ])
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sedang Tayang',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Semua',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFilterChip('Semua Film', true),
                      _buildFilterChip('XXI', false),
                      _buildFilterChip('CGV', false),
                      _buildFilterChip('Cinépolis', false),
                      _buildFilterChip('Watchlist', false, icon: Icons.favorite_border),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildMovieCard(
                  'Bila Esok Ibu Tiada',
                  'assets/Poster2.png',
                  9.2,
                  1,
                ),
                _buildMovieCard(
                  'Leit',
                  'assets/Poster1.jpg',
                  8.5,
                  27,
                ),
                _buildMovieCard(
                  'S3X IS NOT',
                  'assets/Poster3.jpg',
                  7.8,
                  15,
                ),
              ],
            ),
          ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'BILA ESOK IBU TIADA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Film ini dapat rating'),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const Text(
                        '9.2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(' dari penonton lho!'),
                    ],
                  ),
                    Text('Harus ditonton nih!',
                    textAlign: TextAlign.center,),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildFilterChip(String label, bool isSelected, {IconData? icon}) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 16, color: isSelected ? Colors.white : Colors.grey),
                const SizedBox(width: 4),
              ],
              Text(label),
            ],
          ),
          backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      );
    }

    Widget _buildMovieCard(String title, String imagePath, double rating, int daysLeft) {
      return Container(
        width: 280,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    height: 380,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '$daysLeft',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }