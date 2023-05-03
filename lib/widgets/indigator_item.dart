import 'package:flutter/material.dart';

class IndigatorItem extends StatelessWidget {
  final bool isActive;
  const IndigatorItem({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 700),
      margin: EdgeInsets.all(7),
      width: isActive ? 26 : 7,
      height: 7,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
