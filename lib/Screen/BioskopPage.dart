import 'package:flutter/material.dart';
import 'package:ukl_2024/Widgets/Navbar.dart';

class Halamanbioskop extends StatelessWidget {
  const Halamanbioskop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Icon(Icons.search, color: Colors.grey),
                          ),
                          Text(
                            'Cari di TIX ID',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.person_outline),
                  const SizedBox(width: 12),
                  const Icon(Icons.notifications_none),
                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

            // Favorite Cinema Card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.movie,
                      color: Colors.amber,
                      size: 32,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tandai bioskop favoritmu!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFF001F3F)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Mengerti',
                              style: TextStyle(
                                color: Color(0xFF001F3F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Cinema List
            Expanded(
              child: ListView(
                children: [
                  _buildCinemaItem('AEON MALL JGC CGV'),
                  _buildCinemaItem('AEON MALL TANJUNG BARAT XXI'),
                  _buildCinemaItem('AGORA MALL IMAX'),
                  _buildCinemaItem('AGORA MALL PREMIERE'),
                  _buildCinemaItem('AGORA MALL XXI'),
                  _buildCinemaItem('ARION XXI'),
                  _buildCinemaItem('ARTHA GADING XXI'),
                  _buildCinemaItem('BASSURI XXI'),
                ],
              ),
            ),

            // Bottom NavigatioN
          ],
        ),
      ),
      bottomNavigationBar: Navbar(1),
    );
  }

  Widget _buildCinemaItem(String name) {
    return ListTile(
      leading: const Icon(Icons.movie_outlined, color: Colors.grey),
      title: Text(name),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selected ? const Color(0xFF001F3F) : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: selected ? const Color(0xFF001F3F) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
