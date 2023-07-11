import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class tile extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const tile({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Image.asset(imagePath),
        height: 50,
      ),
    );
  }
}
