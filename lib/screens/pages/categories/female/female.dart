import 'package:flutter/material.dart';

import '../../../../theme/color.dart';

class Female extends StatelessWidget {
  const Female({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Text("Female"),
      ),
    );
  }
}
