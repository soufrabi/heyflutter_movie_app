import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF312737),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              size: 32,
              color: Colors.white30,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "Search ...",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
