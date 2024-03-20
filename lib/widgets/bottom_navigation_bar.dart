import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        if (index != 1 || selectedIndex != 1) {
          onItemTapped(index);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/Vectorhome.png', width: 24, height: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/Vectorbookmark.png', width: 24, height: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/Vectorbell.png', width: 24, height: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/Groupadmin.png', width: 24, height: 24),
          label: '',
        ),
      ],
    );
  }
}
