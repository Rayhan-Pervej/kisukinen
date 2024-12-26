import 'package:flutter/material.dart';

import '../../theme/color.dart';

Widget buildNavBarItem({
  required IconData icon,
  required String label,
  required int index,
  required int selectedIndex,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8), // Adds touch feedback
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8), // Larger tap area
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: selectedIndex == index ? MyColor.softBlue : MyColor.black,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color:
                    selectedIndex == index ? MyColor.softBlue : MyColor.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
