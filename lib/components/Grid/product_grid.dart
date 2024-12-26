import 'package:flutter/material.dart';

import '../../screens/pages/product/product_description.dart';
import '../product/prodcut_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        mainAxisExtent: 240,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_1.png',
          productName: 'Women dress for summer',
          discountText: '15% off',
          discountedPrice: 552,
          actualPrice: 1000,
          freeShipping: true,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDescription(
                  imgUrl: 'assets/product_photos/product_image_1.png',
                  productName: 'Women dress for summer',
                  discountText: '15% off',
                  discountedPrice: 552,
                  actualPrice: 1000,
                  freeShipping: true,
                ),
              ),
            );
          },
        ),
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_2.png',
          productName: 'Mans Baggy Jeans',
          discountText: '15% off',
          discountedPrice: 1550,
          actualPrice: 2000,
          freeShipping: false,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDescription(
                  imgUrl: 'assets/product_photos/product_image_2.png',
                  productName: 'Mans Baggy Jeans',
                  discountText: '15% off',
                  discountedPrice: 1550,
                  actualPrice: 2000,
                  freeShipping: false,
                ),
              ),
            );
          },
        ),
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_3.png',
          productName: 'Soft Cotton Tees ',
          discountText: '13% off',
          discountedPrice: 300,
          actualPrice: 700,
          freeShipping: true,
          onTap: () {},
        ),
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_4.png',
          productName: 'White Hoodie Soft',
          discountText: '15% off',
          discountedPrice: 1200,
          actualPrice: 2000,
          freeShipping: false,
          onTap: () {},
        ),
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_3.png',
          productName: 'Soft Cotton Tees ',
          discountText: '13% off',
          discountedPrice: 300,
          actualPrice: 700,
          freeShipping: true,
          onTap: () {},
        ),
        ProdcutCard(
          imageUrl: 'assets/product_photos/product_image_1.png',
          productName: 'Women dress for summer',
          discountText: '15% off',
          discountedPrice: 552,
          actualPrice: 1000,
          freeShipping: true,
          onTap: () {},
        ),
      ],
    );
  }
}
