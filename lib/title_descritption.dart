import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({
    super.key,
    required this.name,
    required this.role,
    this.favColor = Colors.blue,
    this.about,
  });

  final String name;
  final String role;

  // favorite color
  // Adding Optional Parameters
  final Color favColor;
  final String? about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          role,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
