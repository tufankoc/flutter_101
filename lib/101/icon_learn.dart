import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconsize = IconSizes();
  final IconColors iconcolor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Learn'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.abc,
            color: Colors.amber,
            size: 100,
          ),
          Icon(
            Icons.abc,
            color: IconColors().Thunderbirdapprox,
            size: IconSizes().iconsmall,
          ),
          Icon(
            Icons.abc,
            color: iconcolor.Thunderbirdapprox,
            size: iconsize.iconsmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconsmall = 40;
}

class IconColors {
  final Color Thunderbirdapprox = const Color(0xffCA2B16);
}
