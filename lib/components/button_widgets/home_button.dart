import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

class HomeButton extends StatelessWidget {
  final String buttonName;
  final IconData icon;
  final VoidCallback? onTap;
  const HomeButton({
    super.key,
    required this.buttonName,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        overlayColor: MyColor.white,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: MyColor.black,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 22,
            child: Icon(
              icon,
              size: 40,
              color: MyColor.softBlue,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(
              child: Text(
                buttonName,
                style: TextDesign()
                    .bodyText
                    .copyWith(fontSize: 9, color: MyColor.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
