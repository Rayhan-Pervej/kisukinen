import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/color.dart';
import '../../theme/text.dart';
import '../button_widgets/circular_icon_button.dart';

class QuantityAddRemove extends StatelessWidget {
  const QuantityAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIconButton(
                      backgroundColor: MyColor.black,
                      iconColor: MyColor.white,
                      height: 28,
                      width: 28,
                      iconSize: 14,
                      icon: FontAwesomeIcons.minus,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "3",
                      style: TextDesign().header,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircularIconButton(
                      backgroundColor: MyColor.yellow,
                      iconColor: MyColor.black,
                      height: 28,
                      width: 28,
                      iconSize: 14,
                      icon: FontAwesomeIcons.plus,
                      onPressed: () {},
                    ),
      ],
    );
  }
}