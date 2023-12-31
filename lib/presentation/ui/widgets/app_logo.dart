import 'package:flutter/material.dart';

import '../utility/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPath.logo, width: width ?? 120, height: height,);
  }
}
