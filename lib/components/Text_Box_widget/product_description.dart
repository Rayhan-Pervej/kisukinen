import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

class DescriptionText
 extends StatelessWidget {
  const DescriptionText
  ({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 1,
            color: MyColor.gray,
          ),
          Text(
            'Description',
            style: TextDesign().header,
          ),
          const Divider(
            thickness: 1,
            color: MyColor.gray,
          ),
          Text(
            description,
            style: TextDesign().bodyText.copyWith(fontSize: 14),
          ),
          const Divider(
            thickness: 1,
            color: MyColor.gray,
          ),
        ],
      ),
    );
  }
}