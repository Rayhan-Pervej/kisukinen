import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/product/rating_bar.dart';
import '../../theme/color.dart';
import '../../theme/text.dart';

class ProductLabel extends StatelessWidget {
  final String productName;
  final double rating;
  final double discountedPrice;
  final double actualPrice;
  final bool freeShipping;

  const ProductLabel({
    super.key,
    required this.productName,
    required this.rating,
    required this.discountedPrice,
    required this.actualPrice,
    required this.freeShipping,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productName,
            style: TextDesign().header,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ProductRating(rating: rating),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                FontAwesomeIcons.dollarSign,
                size: 12,
              ),
              Text(
                '$discountedPrice',
                style: TextDesign().bodyText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 2),
              const Icon(
                FontAwesomeIcons.dollarSign,
                size: 12,
              ),
              Text(
                '$actualPrice',
                style: TextDesign().bodyText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyColor.gray,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          if (freeShipping)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.5),
              child: Container(
                decoration: BoxDecoration(
                  color: MyColor.black,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  'Free Shipping',
                  style: TextDesign().buttonText.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
