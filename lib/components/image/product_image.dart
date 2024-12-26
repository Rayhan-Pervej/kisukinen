import 'package:flutter/material.dart';

class VCardImage extends StatelessWidget {
  const VCardImage({
    super.key,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.fit,
    this.height,
    required this.imageUrl,
    this.padding,
    this.width,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;

  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(imageUrl),
          fit: fit,
        ),
      ),
    );
  }
}
