import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../screens/pages/cart/cart.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

class NavbarFloatbutton extends StatelessWidget {
  final int itemCount; // Add itemCount as a parameter

  const NavbarFloatbutton({super.key, this.itemCount = 0}); // Default itemCount to 0

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: MyColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            FontAwesomeIcons.basketShopping,
            size: 20,
            color: MyColor.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cart()),
            );
          },
        ),
        if (itemCount > 0) // Conditionally display the badge
          Positioned(
            top: 0, // Adjust position of the badge
            right: 0,
            child: IgnorePointer(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: MyColor.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$itemCount', // Display the item count
                  style: TextDesign().containerHeader.copyWith(
                        color: MyColor.white,
                        fontSize: 12, // Adjust size to fit within the badge
                      ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
