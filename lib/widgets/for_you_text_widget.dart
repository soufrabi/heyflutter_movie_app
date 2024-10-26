import 'package:flutter/material.dart';

class ForYouTextWidget extends StatelessWidget {
  const ForYouTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 6,
      ),
      child: Text(
        "For you",
        style: TextStyle(
          color: Colors.white60,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
