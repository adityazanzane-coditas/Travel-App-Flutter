import 'package:flutter/material.dart';

Widget customNewsCard({
  required String imagePath,
  required String category,
  required String title,
  required String date,
  required String time,
}) {
  return Card(
    color: Colors.white,
    elevation: 0.2,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 92,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 18,
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8,
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
                    height: 9,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Groupcalender.png'),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Gellix',
                        ),
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Image.asset('assets/Groupclock.png'),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Gellix',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
        ],
      ),
    ),
  );
}

Widget customCard3() {
  return Column(
    children: [
      customNewsCard(
        imagePath: 'assets/place3.jpeg',
        category: 'News: Politics',
        title: "Iran's raging protests \nFifth Iranian paramilitary me...",
        date: '16th May',
        time: '09 : 32 pm',
      ),
      customNewsCard(
        imagePath: 'assets/place4.jpeg',
        category: 'News: Science',
        title: "Putin to host ceremony \nannexing occupied Ukrainia...",
        date: '11th May',
        time: '10 : 15 am',
      ),
    ],
  );
}
