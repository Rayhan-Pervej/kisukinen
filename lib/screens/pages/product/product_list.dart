import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/Grid/product_grid.dart';

import '../../../theme/color.dart';
import '../../../theme/text.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: MyColor.softBlue,
        title: Row(
          children: [
            Text(
              'Products',
              style: TextDesign().navText,
            )
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: MyColor.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.barsStaggered,
                    color: MyColor.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: MyColor.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: MyColor.black, width: 2)),
                ),
                dropdownColor: MyColor.white,
                onChanged: (value) {},
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Newest',
                  'Popularity'
                ]
                    .map((option) => DropdownMenuItem(
                        value: option,
                        child: Text(
                          option,
                          style: TextDesign().header.copyWith(fontSize: 16),
                        )))
                    .toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ProductGrid(),
            )
          ],
        ),
      ),
    );
  }
}
