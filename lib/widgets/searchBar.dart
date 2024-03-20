import 'package:flutter/material.dart';

Widget searchBar() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(28.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for articles...',
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40.0),
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF5474FD),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              splashRadius: 20,
              iconSize: 25,
              padding: EdgeInsets.all(18),
            ),
          ),
        ),
      ),
    ),
  );
}
