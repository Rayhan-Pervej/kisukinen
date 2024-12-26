import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/text.dart';
import '../image/product_image.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const VCardImage(
          imageUrl: "assets/product_photos/product_image_1.png",
          height: 60,
          width: 60,
          padding: EdgeInsets.all(5),
          backgroundColor: MyColor.white,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ray",
                style: TextDesign().containerHeader.copyWith(fontSize: 11),
              ),
              Text(
                "Women dress for summer",
                style: TextDesign()
                    .bodyText
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Size: ", style: TextDesign().fieldHint),
                    TextSpan(
                        text: 'M',
                        style: TextDesign()
                            .containerHeader
                            .copyWith(fontSize: 14)),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
