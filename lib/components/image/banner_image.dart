import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.fit,
    this.height,
    required this.imageUrl,
    this.onPressed,
    this.padding,
    this.width,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;

  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
