import 'package:flutter/material.dart';

class PadddingLearnView extends StatelessWidget {
  const PadddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingRightOnly +
                ProjectPadding.pagePaddingVertical,
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
