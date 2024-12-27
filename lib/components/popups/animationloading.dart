import 'package:flutter/material.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Animationloading extends StatelessWidget {
  const Animationloading({
    super.key,
    required this.text,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingAnimationWidget.threeRotatingDots(
                color: MyColor.black, size: 40),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: TextDesign().containerHeader,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            // showAction
            //     ? SizedBox(
            //         width: 250,
            //         child: OutlinedButton(
            //             onPressed: onActionPressed,
            //             style: OutlinedButton.styleFrom(
            //                 backgroundColor: MyColor.black),
            //             child: Text(
            //               actionText!,
            //               style: TextDesign().header,
            //             )),
            //       )
            //     : const SizedBox()
          ],
        ),
      ),
    );
  }
}
