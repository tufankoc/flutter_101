import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors')),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Text(
              'data',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            color: ColorsItems.citron,
            child: Text(
              'data',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            color: ColorsItems.casablanca,
            child: Text(
              'data',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static final Color citron = Color(0xff89B521);
  static final Color casablanca = Color.fromRGBO(198, 298, 211, 1);
}
