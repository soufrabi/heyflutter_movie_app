import 'package:flutter/material.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({super.key});

  Widget buildWatchButton() {
    return Builder(builder: (context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF3B235C),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Center(
          child: Text(
            "Watch Movie",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    });
  }

  Widget buildTag(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF312737),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF635967),
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildHeading(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget buildTrailer() {
    return Builder(builder: (context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage("https://i.pravatar.cc/500?img=32"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.black45,
                size: 32,
              ),
            )
          ],
        ),
      );
    });
  }

  Widget buildCast() {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        // width: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pravatar.cc/150?img=${index + 1}",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "Zendaya",
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            );
          },
        ),
      );
    });
  }

  Widget buildComments() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            margin: const EdgeInsets.only(
              right: 20.0,
            ),
            width: 250.0,
            decoration: BoxDecoration(
              color: const Color(0xFF2D2432),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        // Commenter avatar
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pravatar.cc/150?img=${index + 1}"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cody Fisher",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "June 14, 2002",
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    // Rating given by Commenter
                    const Row(
                      children: [
                        Text(
                          "4.8",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Great movie! I will review it more than once. Special thanks to one the operator!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121012),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Poster Image
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/dune_movie_poster.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Name Director Star
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Name and Director
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dune",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "2021, Denis Villenueve",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "8.2",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    buildTag("Epic"),
                    const SizedBox(
                      width: 10,
                    ),
                    buildTag("Fantasy"),
                    const SizedBox(
                      width: 10,
                    ),
                    buildTag("Drama"),
                  ],
                ),
              ),
              // Cast text
              buildHeading("Cast"),
              buildCast(),
              buildHeading("Trailer"),
              buildTrailer(),
              buildHeading("Comments"),
              buildComments(),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: buildWatchButton(),
        ),
        Positioned(
          left: 15,
          top: 40,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black38.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
