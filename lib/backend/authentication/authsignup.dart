import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisukinen/backend/authentication/authentication.dart';
import 'package:kisukinen/backend/authentication/userauth.dart';
import 'package:kisukinen/components/popups/screenloader.dart';
import 'package:kisukinen/screens/pages/navbar.dart';

import '../../components/popups/snackbar.dart';
import '../User/usermodel.dart';
import '../network/networkmanager.dart';

class AuthSignup extends GetxController {
  static AuthSignup get instance => Get.find();

  //variable
  final hidePassword = true.obs;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      Screenloader.openLoadingDialog();

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        Screenloader.stopLoading();
        Snackbar.errorSnackbar(
          title: "Connection Error",
          message: "No internet connection. Please try again.",
        );
        return;
      }

      // Validate form
      if (!signupFormKey.currentState!.validate()) {
        Screenloader.stopLoading();
        return;
      }

      final userCredential = await Authentication.instance
          .registerWithEmailAndPassword(emailController.text.trim(),
              confirmPasswordController.text.trim());

      final newUser = UserModel(
          id: userCredential!.user!.uid,
          firstName: firstNameController.text.trim(),
          lastName: lastNameController.text.trim(),
          email: emailController.text.trim(),
          phoneNumber: "",
          profilePicture: "");

      final userAuth = Get.put(UserAuth());

      await userAuth.saveUserRecord(newUser);
      Screenloader.stopLoading();

      Snackbar.successSnackbar(
          title:
              "Congratulations ${firstNameController.text.trim()} ${lastNameController.text.trim().camelCase}");

      Get.to(() => const Navbar());
    } catch (e) {
      // Catch and show errors
      Screenloader.stopLoading();
      Snackbar.errorSnackbar(
        title: "Oops!",
        message: "An unexpected error occurred. Please try again.",
      );
    }
  }
}
