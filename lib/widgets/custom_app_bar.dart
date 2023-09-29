import 'package:flutter/material.dart';

import 'custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
