import 'package:flutter/material.dart';
import 'package:heyflutter_movie_app/widgets/lead_text_widget.dart';
import 'package:heyflutter_movie_app/widgets/name_icon_widget.dart';
import 'dart:ui';

import 'package:heyflutter_movie_app/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget forYouCards() {
    return Builder(builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: PageView.builder(
            // itemCount: 4,
            itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF312737),
                  blurRadius: 10,
                  spreadRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(
                  "https://picsum.photos/id/${index + 1}/500/500",
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NameIconWidget(),
                const CustomSearchBar(),
                const LeadTextWidget(heading: "For you"),
                forYouCards(),
                const LeadTextWidget(heading: "Popular"),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
