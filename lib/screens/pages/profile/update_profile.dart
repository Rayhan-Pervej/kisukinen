import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: MyColor.darkBlue,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: MyColor.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Update Profile",
          style: TextDesign().headerLarge,
        ),
      ),
    );
  }
}
