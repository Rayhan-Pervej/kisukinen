import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/button_widgets/text_button.dart';
import 'package:kisukinen/screens/pages/categories/child/child.dart';
import 'package:kisukinen/screens/pages/categories/female/female.dart';
import 'package:kisukinen/screens/pages/categories/male/male.dart';
import '../../../theme/color.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  final pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: textButton(
                    icon: FontAwesomeIcons.person,
                    label: "Male",
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                        pageViewController.jumpToPage(0);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: textButton(
                    icon: FontAwesomeIcons.personDress,
                    label: "Female",
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                        pageViewController.jumpToPage(1);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: textButton(
                    icon: FontAwesomeIcons.baby,
                    label: "Child",
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                        pageViewController.jumpToPage(2);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageViewController,
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              children: const [
                Male(),
                Female(),
                Child(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
