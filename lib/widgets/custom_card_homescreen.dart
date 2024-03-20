import 'package:flutter/material.dart';

Widget customCardHomeScreen({
  required String imagePath,
  required String imageIcon,
  required String title,
  required String authorName,
  required String date,
}) {
  return Card(
    color: Colors.white,
    elevation: 0.2,
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 231,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              fontFamily: 'Gellix',
              color: Color(0xFF19202D),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Image.asset(
                imageIcon,
                height: 52,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF9397A0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 41,
              ),
              Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF5F4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.25),
                  child: Image.asset('assets/Vectorshare.png'),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
