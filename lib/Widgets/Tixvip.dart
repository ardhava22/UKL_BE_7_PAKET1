import 'package:flutter/material.dart';

class TixVip extends StatelessWidget {
  const TixVip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
          Color.fromARGB(255, 70, 104, 137),
          Color.fromARGB(255, 255, 255, 255)
        ])
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            const Icon(
              Icons.monetization_on,
              size: 40,
              color: Colors.amber,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "Jadilah TIX VIP ✨ Dapatkan untung lebih 😍",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
