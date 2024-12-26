import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/button_widgets/circular_icon_button.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class ProductBottomBar extends StatefulWidget {
  const ProductBottomBar({super.key});

  @override
  State<ProductBottomBar> createState() => _ProductBottomBarState();
}

class _ProductBottomBarState extends State<ProductBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: const BoxDecoration(
        color: MyColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIconButton(
                  backgroundColor: MyColor.yellow,
                  iconColor: MyColor.black,
                  icon: FontAwesomeIcons.minus,
                  onPressed: () {}),
              const SizedBox(
                width: 10,
              ),
              Text(
                '2',
                style: TextDesign().header.copyWith(fontSize: 25),
              ),
              const SizedBox(
                width: 10,
              ),
              CircularIconButton(
                  backgroundColor: MyColor.black,
                  iconColor: MyColor.white,
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {}),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.yellow,
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text(
                "Add to Cart",
                style: TextDesign().buttonText.copyWith(color: MyColor.black),
              ))
        ],
      ),
    );
  }
}
