import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class Snackbar {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MyColor.gray.withOpacity(0.9),
        ),
        child: Center(
          child: Text(
            message,
            style: TextDesign().bodyText.copyWith(fontSize: 13),
          ),
        ),
      ),
    ));
  }

  static successSnackbar({required title, message = ''}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColor.black,
        backgroundColor: MyColor.yellow,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.check,
          color: MyColor.white,
        ));
  }

  static warningSnackbar({required title, message = ''}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColor.white,
        backgroundColor: MyColor.red,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(15),
        icon: const Icon(
          Iconsax.warning_2,
          color: MyColor.white,
        ));
  }

  static errorSnackbar({required title, message = ''}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MyColor.white,
        backgroundColor: MyColor.red,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(15),
        icon: const Icon(
          Iconsax.warning_2,
          color: MyColor.white,
        ));
  }
}
