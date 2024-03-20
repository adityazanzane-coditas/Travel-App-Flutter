import 'package:flutter/material.dart';
import 'package:travelapp/widgets/custom_card_news.dart';
import 'package:travelapp/widgets/popularPhotos.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 35, 16, 1),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/profileImage.jpeg'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            'Elly Byers',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              fontFamily: 'Gellix',
                            ),
                          ),
                        ),
                        Text(
                          'Author & Writer',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color(0xFF5474FD),
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Following'),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(35, 28, 16, 0),
                child: Text(
                  "Every piece of chocolate I ever ate is getting back\nat me.. desserts are very revengeful..",
                  style: TextStyle(
                    color: Color(0xFF9397A0),
                    fontFamily: 'Gellix',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 28, 16, 0),
                child: Container(
                  height: 105,
                  width: 335,
                  decoration: BoxDecoration(
                    color: Color(0xFF19202D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 29),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStatisticsItem('54.21k', 'Followers'),
                        const SizedBox(width: 26),
                        Container(
                          width: 1,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: Color(0xFFC1D4F9),
                          ),
                        ),
                        const SizedBox(width: 35),
                        _buildStatisticsItem('2.11k', 'Posts'),
                        const SizedBox(width: 35),
                        Container(
                          width: 1,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: Color(0xFFC1D4F9),
                          ),
                        ),
                        const SizedBox(width: 27),
                        _buildStatisticsItem('36.40k', 'Followers'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    const Text(
                      "Elly's Post",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Gellix',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 188.0),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                              style: TextStyle(
                                color: Color(0xFF5474FD),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  children: [
                    customCard3(),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    Text(
                      "Popular From Elly",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Gellix',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 35.0),
                child: PopularPhotoCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatisticsItem(String count, String title) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontFamily: 'Gellix',
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Gellix',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
