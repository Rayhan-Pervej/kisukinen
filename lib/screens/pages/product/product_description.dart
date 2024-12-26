import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/Text_Box_widget/product_description.dart';
import 'package:kisukinen/components/button_widgets/select_size_button.dart';
import 'package:kisukinen/components/image/product_image.dart';
import 'package:kisukinen/components/product/product_label.dart';
import 'package:kisukinen/screens/pages/cart/cart.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';
import '../../../components/button_widgets/product_bottom_bar.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription(
      {required this.imgUrl,
      required this.productName,
      required this.discountText,
      required this.discountedPrice,
      required this.actualPrice,
      required this.freeShipping,
      super.key});

  final String imgUrl;
  final String productName;
  final String discountText;
  final double discountedPrice;
  final double actualPrice;
  final bool freeShipping;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int itemCount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      bottomNavigationBar: const ProductBottomBar(),
      appBar: // Replace this with your actual item count logic

          AppBar(
        toolbarHeight: 50,
        backgroundColor: MyColor.softBlue,
        title: Row(
          children: [
            Text(
              'Description',
              style: TextDesign().navText,
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: MyColor.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(
                  FontAwesomeIcons.basketShopping,
                  color: MyColor.white,
                ),
                if (itemCount > 0)
                  Positioned(
                    right: -5,
                    top: -5,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: MyColor.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '$itemCount',
                        style: TextDesign().containerHeader.copyWith(
                              color: MyColor.white,
                              fontSize:
                                  11, // Adjust size to fit within the badge
                            ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          VCardImage(imageUrl: widget.imgUrl),

          //product label
          ProductLabel(
              productName: widget.productName,
              rating: 4,
              discountedPrice: widget.discountedPrice,
              actualPrice: widget.actualPrice,
              freeShipping: widget.freeShipping),

          // select size
          SizedBox(
            child: Column(
              children: [
                Text(
                  "Select Size",
                  style: TextDesign().header,
                ),
                const SizedBox(
                  height: 5,
                ),
                SelectSizeButton(
                  sizes: const ["M", "L", "XL", "XXL"],
                  onSizeSelected: (selectedSize) {
                    // ignore: avoid_print
                    print("Selected Size: $selectedSize");
                  },
                  initialSize: "M",
                ),
              ],
            ),
          ),

          // product description

          const DescriptionText(
              description:
                  'Embrace the season in style with our stunning summer dress! Featuring a light, breezy fabric in a vibrant floral print, this dress is ideal for warm days and sunny afternoons. Its relaxed fit and comfortable silhouette make it perfect for casual outings, beach trips, or a day in the park. The flowing design and adjustable straps add a touch of elegance, while the soft, breathable material keeps you cool and comfortable all day long. Pair with sandals and a wide-brimmed hat for a chic, effortless summer look.')
        ],
      ),
    );
  }
}
