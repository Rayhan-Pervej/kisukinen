import 'package:flutter/material.dart';
import 'package:kisukinen/components/Grid/product_grid.dart';
import 'package:kisukinen/theme/color.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: MyColor.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [ProductGrid()],
            ),
          ),
        ));
  }
}
