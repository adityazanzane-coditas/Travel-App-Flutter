import 'package:flutter/material.dart';

Widget customCard2({required String imagePath, required String title}) {
  return Card(
    color: Colors.white,
    elevation: 0.2,
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 69,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Gellix',
                  color: Color(0xFF19202D),
                ),
              ),
              Image.asset(
                'assets/Groupeye.png',
                width: 78,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 19),
        ],
      ),
    ),
  );
}
