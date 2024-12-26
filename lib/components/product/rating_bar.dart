import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kisukinen/theme/color.dart';

class ProductRating extends StatelessWidget {
  final double rating; // Product rating value (e.g., 4.5)

  const ProductRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating, // Set the product rating
      direction: Axis.horizontal,
      allowHalfRating: true, // Allow half stars
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: const Icon(Icons.star, color: MyColor.yellow), // Full star
        half: const Icon(Icons.star_half, color: MyColor.yellow), // Half star
        empty:
            const Icon(Icons.star_border, color: MyColor.yellow), // Empty star
      ),
      itemSize: 25.0, // Size of the stars
      ignoreGestures: true, // Makes the RatingBar non-interactive
      onRatingUpdate: (value) {
        // No need to implement since it's non-interactive
      },
    );
  }
}
