import 'package:flutter/material.dart';
import 'package:music_app/data/artist_data.dart';
import 'package:music_app/data/recent_data.dart';
import 'package:music_app/data/trending_data.dart';
import 'package:music_app/utils/colors.dart';

import '../../widget/iconwidget.dart';
import '../../widget/product_title.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconWidget(
                  click: () {},
                  icon: Icons.menu,
                ),
                const SizedBox(
                  height: 30,
                ),
                ProductTitle(
                  color: kprimaryClr,
                  title: "Trending",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    itemCount: trendingData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  trendingData[index].image,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            trendingData[index].title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            trendingData[index].subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: kgreyClr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ProductTitle(
                  color: kpinkClr,
                  title: "Recent",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    itemCount: recentData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  recentData[index].image,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            recentData[index].title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            recentData[index].subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: kgreyClr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ProductTitle(
                  color: korangeClr,
                  title: "Artist",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    itemCount: artistData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  artistData[index].image,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            artistData[index].title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            artistData[index].subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: kgreyClr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
