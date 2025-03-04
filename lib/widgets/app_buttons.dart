import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final String? text;
  final IconData? icon;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  final bool isIcon; // Changed to non-nullable

  const AppButtons({
    Key? key,
    this.isIcon = false,
    this.icon,
    this.text,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Center(
        child: isIcon
            ? Icon(icon, color: AppColors.mainColor, size: size * 0.5)
            : text != null
            ? AppText(
          text: text!,
          color: color,
          size: size * 0.4, // Adjust font size dynamically
        )
            : null, // Show nothing if both are null
      ),
    );
  }
}
