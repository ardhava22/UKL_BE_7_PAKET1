import 'package:flutter/material.dart';
import 'package:ukl_2024/Widgets/Berita.dart';
import 'package:ukl_2024/Widgets/Carousel.dart';
import 'package:ukl_2024/Widgets/Appbar.dart';
import 'package:ukl_2024/Widgets/MovieScrol.dart';
import 'package:ukl_2024/Widgets/Navbar.dart';
import 'package:ukl_2024/Widgets/Spotlight.dart';
import 'package:ukl_2024/Widgets/Tixvip.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousel(), 
            SizedBox(height: 8), 
            TixVip(),
            SizedBox(height: 8,),
            MovieScrol(),
            SizedBox(height: 12,),
            Spotlight(),
            SizedBox(height: 14,),
            Berita(),
            
            
          ],
        ),
      ),
      bottomNavigationBar: Navbar(0),
    );
  }
}
