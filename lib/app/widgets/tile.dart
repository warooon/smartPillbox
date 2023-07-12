// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class tile extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const tile({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        child: Image.asset(imagePath),
      ),
    );
  }
}
