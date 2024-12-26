import 'package:flutter/material.dart';
import 'package:kisukinen/screens/pages/product/product_list.dart';

import 'package:kisukinen/theme/text.dart';
import '../../../../theme/color.dart';
import 'male_card.dart';

class Male extends StatelessWidget {
  const Male({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 3,
          mainAxisExtent: 120,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: InkWell(
              borderRadius:
                  BorderRadius.circular(20), // Ripple effect respects corners
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductList()));
              },
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.graySoft,
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 6,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(categories[index].imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: Text(
                            categories[index].name.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextDesign()
                                .pageTitle
                                .copyWith(color: MyColor.darkBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}






// AnimatedContainer(
//                   duration: const Duration(milliseconds: 100),
//                   transform: isPressed
//                       ? (Matrix4.identity()..scale(0.95)) // Scale down slightly
//                       : Matrix4.identity(),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: MyColor.graySoft,
//                     boxShadow: const [
//                       BoxShadow(
//                         color: MyColor.black,
//                         spreadRadius: 2,
//                         blurRadius: 5,
//                       ),
//                     ],
//                     image: DecorationImage(
//                       image: AssetImage(categories[index].imagePath),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 15),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Center(
//                           child: Text(
//                             categories[index].name,
//                             textAlign: TextAlign.center,
//                             style: TextDesign().pageTitle,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),