import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Screenloader {
  static void openLoadingDialog() {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: MyColor.white,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingAnimationWidget.threeRotatingDots(
                    color: MyColor.black, size: 70),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
