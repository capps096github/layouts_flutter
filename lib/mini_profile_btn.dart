
import 'package:flutter/material.dart';

import 'colors.dart';

class MiniProfileButton extends StatelessWidget {
  const MiniProfileButton({
    super.key,
    required this.icon,
    required this.text,
  });

  // icon
  final IconData icon;
  // text
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: white,
        foregroundColor: navy,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: Icon(
        icon,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          style: const TextStyle(
            color: navy,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
