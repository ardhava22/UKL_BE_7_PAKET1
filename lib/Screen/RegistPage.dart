import 'package:flutter/material.dart';
import 'package:ukl_2024/Screen/HomePage.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({super.key});

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        title: Text(
          'Daftar TIX ID',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NAMA LENGKAP",
              style: TextStyle(color: Color(0xFF001F3F)),
            ),
            TextField(
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'NOMOR HANDPHONE',
              style: TextStyle(color: Color(0xFF001F3F)),
            ),
            TextField(
              decoration: InputDecoration(labelText: '+62'),
            ),
            SizedBox(
              height: 20,
            ),

            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),
                    ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF001F3F),
                    padding: EdgeInsets.symmetric(horizontal: 190, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  child: Text(
                    'Daftar TIX ID',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )),
            )
          ],
        ),
      ),
      // bottomNavigationBar: Navbar(selectedItem: 0),
    );
  }
}
