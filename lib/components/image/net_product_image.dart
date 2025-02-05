import 'dart:convert';

import 'package:flutter/material.dart';

class NetProductImage extends StatelessWidget {
  const NetProductImage({
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
        child: Image.memory(
          base64Decode(imageUrl), // Decode the base64 string
          fit: fit,
          width: width,
          height: height,
          errorBuilder: (context, error, stackTrace) {
            return buildPlaceholder();
          },
        ),
      ),
    );
  }

  Widget buildPlaceholder() {
    return Container(
      color: Colors.grey[300],
      child: Icon(
        Icons.image,
        color: Colors.grey[600],
        size: 40,
      ),
    );
  }
}
