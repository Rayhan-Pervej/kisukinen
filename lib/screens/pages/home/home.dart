import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/button_widgets/home_Button.dart';
import 'package:kisukinen/components/image/banner_image.dart';
import 'package:kisukinen/components/product/prodcut_card.dart';
import 'package:kisukinen/screens/pages/product/product_description.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: ListView(
        children: [
          // Carousel Slider
          SizedBox(
            height: 360,
            child: Stack(
              children: [
                carousel(),

                //
                Positioned(bottom: 0, left: 0, right: 0, child: itemButton())
              ],
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Trending Dress",
                  style: TextDesign().containerHeader,
                ),
                const SizedBox(
                  height: 5,
                ),
                const BannerImage(imageUrl: 'assets/banner/home_banner3.png'),
                products(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget carousel() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        items: const [
          BannerImage(imageUrl: 'assets/banner/home_banner1.png'),
          BannerImage(imageUrl: 'assets/banner/home_banner2.png'),
          BannerImage(imageUrl: 'assets/banner/home_banner3.png')
        ],
      ),
    );
  }

  //

  Widget products() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 187,
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

  Widget itemButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        shrinkWrap: true,
        physics:
            const NeverScrollableScrollPhysics(), // Prevents scroll conflicts
        children: [
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 1 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 2 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 3 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 4 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 5 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 6 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 7 tapped");
            },
          ),
          HomeButton(
            buttonName: "Half Sleeve Tees",
            icon: FontAwesomeIcons.shirt,
            onTap: () {
              print("Button 8 tapped");
            },
          ),
        ],
      ),
    );
  }
}
