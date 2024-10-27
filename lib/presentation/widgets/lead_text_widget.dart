import 'package:flutter/material.dart';

class LeadTextWidget extends StatelessWidget {
  final String heading;
  const LeadTextWidget({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 6,
      ),
      child: Text(
        heading,
        style: const TextStyle(
          color: Colors.white60,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
