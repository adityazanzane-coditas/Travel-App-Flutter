import 'package:flutter/material.dart';

class PopularPhotoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 160,
                width: 300, // Adjust width as needed
                child: Image.asset(
                  'assets/place5.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 10), // Adjust spacing between the cards
          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 160,
                width: 300, // Adjust width as needed
                child: Image.asset(
                  'assets/place6.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
