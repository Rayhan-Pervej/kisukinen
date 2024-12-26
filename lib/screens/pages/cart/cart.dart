import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/cart/cart_card.dart';
import 'package:kisukinen/components/cart/quantity_add_remove.dart';
import 'package:kisukinen/theme/text.dart';
import '../../../theme/color.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: MyColor.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: MyColor.softBlue,
        title: Row(
          children: [
            Text(
              'Cart',
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
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: 12,
        ),
        itemCount: 10,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const CartCard(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      QuantityAddRemove(),
                    ],
                  ),
                  Text(
                    '\$1200',
                    overflow: TextOverflow.ellipsis,
                    style: TextDesign().containerHeader.copyWith(fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: MyColor.yellow,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(10)),
          onPressed: () {},
          child: Text(
            "Checkout \$2000",
            style: TextDesign().containerHeader,
          ),
        ),
      ),
    );
  }
}
