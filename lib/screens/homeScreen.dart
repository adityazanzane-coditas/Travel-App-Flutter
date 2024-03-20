import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelapp/widgets/custom_card_homescreen.dart';
import 'package:travelapp/widgets/custom_card_short.dart';
import 'package:travelapp/widgets/searchBar.dart';
import 'package:travelapp/screens/details_screen.dart';
import 'package:travelapp/widgets/bottom_navigation_bar.dart';
import 'package:travelapp/screens/profile_screen.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Gellix',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isBookmarkScreen = false;

  @override
  Widget build(BuildContext context) {
    // Date Time Format below Welcome Back
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, d MMMM').format(now);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 35, 16, 1),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/startimg.png'),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Gellix',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          formattedDate,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'Gellix'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          searchBar(),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Row(
              children: [
                Text('#Health'),
                SizedBox(width: 38),
                Text('#Music'),
                SizedBox(width: 38),
                Text('#Technology'),
                SizedBox(width: 38),
                Text('#Sports'),
                SizedBox(width: 38),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: SizedBox(
              height: 343,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customCardHomeScreen(
                        imagePath: 'assets/place1.jpeg',
                        imageIcon: 'assets/profile1.jpeg',
                        title:
                            "Feel the thrill on the only \nsurf simulator in Maldives 2022",
                        authorName: 'Sang Dong-Min',
                        date: 'Sep 9, 2022',
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customCardHomeScreen(
                        imagePath: 'assets/place2.jpeg',
                        imageIcon: 'assets/profile2.jpeg',
                        title:
                            "Hong Kong wins over Wall \nStreet CEOs after lifting strict",
                        authorName: 'Pan Bong',
                        date: 'Jan 3, 2022',
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              children: [
                const Text(
                  'Short For You',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Gellix',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 168.0),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('View All'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customCard2(
                        imagePath: 'assets/icon1.jpeg',
                        title: "Top Trending \nIslands in 2022",
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customCard2(
                        imagePath: 'assets/icon2.jpeg',
                        title: "China \nTrading",
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
            _isBookmarkScreen = _selectedIndex == 1;
            if (_selectedIndex == 1) {
              Navigator.pushNamed(context, '/details');
            } else if (_selectedIndex == 3) {
              Navigator.pushNamed(context, '/profile');
            }
          });
        },
      ),
    );
  }
}
