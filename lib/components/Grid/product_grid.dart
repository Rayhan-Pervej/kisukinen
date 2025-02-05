import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisukinen/backend/product_show.dart/show_product.dart';
import 'package:kisukinen/components/product/net_product_card.dart';
import 'package:kisukinen/components/product/prodcut_card.dart';
import '../../screens/pages/product/product_description.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Obx(() {
      if (productController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (productController.productList.isEmpty) {
        return const Center(child: Text("No products available."));
      }

      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 240,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productController.productList.length,
        itemBuilder: (context, index) {
          final product = productController.productList[index];

          return NetProductCard(
              imageUrl: product.image,
              productName: product.name,
              discountText: '10% Off',
              freeShipping: true,
              discountedPrice: double.parse(product.price),
              actualPrice: double.parse(product.price),
              onTap: () {});
        },
      );
    });
  }
}
