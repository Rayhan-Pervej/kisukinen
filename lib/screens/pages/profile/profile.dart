import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/Text_Box_widget/text_box.dart';
import 'package:kisukinen/components/button_widgets/text_button.dart';
import 'package:kisukinen/screens/pages/profile/update_profile.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:random_avatar/random_avatar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  SizedBox(
                    child: RandomAvatar(
                      "fs",
                      trBackground: false,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.camera,
                        color: MyColor.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const TextBox(textHeader: "", textBody: "Rayhan Pervej"),
                const TextBox(
                  textHeader: "",
                  textBody: "01611060324",
                ),
                textButton(
                  icon: FontAwesomeIcons.angleRight,
                  label: "Update Profile",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UpdateProfile()));
                  },
                ),
                textButton(
                  icon: FontAwesomeIcons.angleRight,
                  label: "Order History",
                  onTap: () {},
                ),
                textButton(
                  icon: FontAwesomeIcons.angleRight,
                  label: "Data Deletion",
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
