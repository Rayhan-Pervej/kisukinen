import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/color.dart';
import '../../theme/text.dart';
import '../image/product_image.dart';

class ProdcutCard extends StatelessWidget {
  const ProdcutCard({
    super.key,
    this.width = 120,
    required this.imageUrl,
    required this.productName,
    required this.discountText,
    required this.discountedPrice,
    required this.actualPrice,
    this.freeShipping = false,
    required this.onTap,
  });
  final double width;
  final String imageUrl;
  final String productName;
  final String discountText;
  final double discountedPrice;
  final double actualPrice;
  final bool freeShipping;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: MyColor.graySoft,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        width: width,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColor.white,
            boxShadow: const [
              BoxShadow(
                  color: MyColor.gray,
                  spreadRadius: 2,
                  blurRadius: 9,
                  offset: Offset(0, 2))
            ]),
        child: Column(
          children: [
            //thumbnail

            SizedBox(
              child: Stack(
                children: [
                  VCardImage(
                    imageUrl: imageUrl,
                  ),
                  Positioned(
                    top: 1,
                    left: 1,
                    child: Container(
                      height: 22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColor.yellow,
                      ),
                      child: Center(
                        child: Text(
                          discountText,
                          style: TextDesign().bodyText.copyWith(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //descripton

            Padding(
              padding:
                  const EdgeInsets.only(left: 4, bottom: 6, top: 6, right: 4),
              child: Column(
                children: [
                  //product name
                  Text(
                    productName,
                    style: TextDesign().buttonText.copyWith(
                        color: MyColor.black, fontSize: 13, height: 1),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),

                  const SizedBox(
                    height: 4,
                  ),

                  
                  //shipping
                  Column(
                    children: [
                      freeShipping
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.5),
                              child: Container(
                                color: MyColor.black,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 3),
                                child: Text(
                                  'Free Shipping',
                                  style: TextDesign().buttonText.copyWith(
                                        fontSize: 9,
                                      ),
                                ),
                              ),
                            )
                          : const SizedBox(
                              height: 20,
                            ),
                    ],
                  ),

                  //Price

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 12,
                      ),
                      Text(
                        "$discountedPrice",
                        style: TextDesign().bodyText.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '$actualPrice',
                        style: TextDesign().bodyText.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: MyColor.gray,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2,
                            ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
