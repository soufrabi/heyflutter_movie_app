import 'package:flutter/material.dart';
import 'package:heyflutter_movie_app/features/detail_movie/presentation/detail_movie.dart';
import 'package:heyflutter_movie_app/presentation/widgets/lead_text_widget.dart';
import 'package:heyflutter_movie_app/presentation/widgets/name_icon_widget.dart';
import 'package:heyflutter_movie_app/presentation/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget forYouCards() {
    return Builder(builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
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

  Widget popularCards() {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 6,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailMovieScreen()));
              },
              child: Container(
                width: 150,
                margin: const EdgeInsets.only(right: 10.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pravatar.cc/150?img=${index + 1}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(4.0),
                          color: const Color(0x0E0C0E).withOpacity(0.6),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shang-Chi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "2023",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  Icon(Icons.star, color: Colors.yellow)
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
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
                popularCards(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
