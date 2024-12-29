import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisukinen/backend/authentication/authentication.dart';
import 'package:kisukinen/components/popups/screenloader.dart';

import '../../components/popups/snackbar.dart';
import '../../screens/pages/navbar.dart';
import '../network/networkmanager.dart';

class AuthLogin extends GetxController {
  static AuthLogin get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void login() async {
    try {
      Screenloader.openLoadingDialog();

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        Screenloader.stopLoading();
        Snackbar.errorSnackbar(
          title: "Connection Error",
          message: "No internet connection. Please try again.",
        );
        return;
      }

      if (!loginFormKey.currentState!.validate()) {
        Screenloader.stopLoading();
        return;
      }

      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      final token = await userCredential.user?.getIdToken();

      if (token != null) {
        Authentication.instance.login(token);
        Screenloader.stopLoading();
        Snackbar.successSnackbar(
            title: 'Login Successful', message: 'Welcome back!');
        Get.offAll(() => const Navbar());
      }
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
