import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

Widget textButton({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return TextButton(
    onPressed: onTap,
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(10),
      backgroundColor: MyColor.graySoft,
      iconColor: MyColor.black,
      overlayColor: MyColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextDesign().bodyText.copyWith(
                fontSize: 16, fontWeight: FontWeight.w400, height: 0)),
        Icon(
          icon,
          size: 15,
        ),
      ],
    ),
  );
}
