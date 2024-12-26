import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/button_widgets/navbar_floatbutton.dart';
import 'package:kisukinen/screens/pages/offers/offers.dart';
import 'package:kisukinen/theme/color.dart';
import '../auth/login.dart';
import 'categories/categories_navbar.dart';
import 'home/home.dart';
import 'profile/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  final pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: MyColor.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: MyColor.softBlue,
        actions: selectedIndex == 3
            ? [
                IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        (context),
                        MaterialPageRoute(builder: (context) => const Login()),
                        (route) => false);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    color: MyColor.white,
                  ),
                )
              ]
            : null,
      ),
      body: PageView(
        controller: pageViewController,
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        children: const [
          Home(),
          Categories(),
          Offers(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: MyColor.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        padding: const EdgeInsets.only(bottom: 1),
        height: 50,
        // Adjust the margin for the notch
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.house,
                color: selectedIndex == 0 ? MyColor.softBlue : MyColor.black,
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                  pageViewController.jumpToPage(0);
                });
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.list,
                color: selectedIndex == 1 ? MyColor.softBlue : MyColor.black,
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  pageViewController.jumpToPage(1);
                });
              },
            ),
            const SizedBox(width: 48), // Space for the floating action button
            IconButton(
              icon: Icon(
                FontAwesomeIcons.gift,
                color: selectedIndex == 2 ? MyColor.softBlue : MyColor.black,
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                  pageViewController.jumpToPage(2);
                });
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.userLarge,
                color: selectedIndex == 3 ? MyColor.softBlue : MyColor.black,
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                  pageViewController.jumpToPage(3);
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const SizedBox(
        height: 50,
        width: 50,
        child: NavbarFloatbutton(
          itemCount: 20,
        ),
      ),
    );
  }
}




//  bottomNavigationBar: Theme(
//         data: ThemeData(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//         ),
//         child: BottomNavigationBar(
          
//           unselectedItemColor: MyColor.black,
//           selectedItemColor: MyColor.softBlue,
//           backgroundColor: MyColor.white,
//           type: BottomNavigationBarType.fixed,
//           selectedLabelStyle: GoogleFonts.poppins(
//             fontSize: 12,
//             fontWeight: FontWeight.bold,
//           ),
//           unselectedLabelStyle: GoogleFonts.poppins(
//             fontSize: 12,
//             fontWeight: FontWeight.bold,
//           ),
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(FontAwesomeIcons.house),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(FontAwesomeIcons.plus), label: "Categories"),
//             BottomNavigationBarItem(
//                 icon: Icon(FontAwesomeIcons.gift), label: "Offers"),
//             BottomNavigationBarItem(
//                 icon: Icon(FontAwesomeIcons.userLarge), label: "Profile")
//           ],
//           currentIndex: selectedIndex,
//           onTap: (index) {
//             setState(() {
//               if ((selectedIndex - index).abs() > 1) {
//                 pageViewController.jumpToPage(index);
//               }
//               pageViewController.animateToPage(
//                 index,
//                 duration: const Duration(milliseconds: 400),
//                 curve: Curves.ease,
//               );
//               selectedIndex = index;
//             });
//           },
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: MyColor.white,
//         child: Icon(FontAwesomeIcons.basketShopping),
//         onPressed: () {},
//       ),

