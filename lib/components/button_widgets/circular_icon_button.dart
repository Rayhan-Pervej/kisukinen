import 'package:flutter/material.dart';
import 'package:kisukinen/theme/color.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.onPressed,
    this.iconSize = 20,
    this.width = 35,
    this.height = 35,
  });

  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double iconSize;
  final double width;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        highlightColor: (iconColor == Colors.black
            ? Colors.grey.withOpacity(0.4)
            : MyColor.graySoft.withOpacity(0.2)),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
