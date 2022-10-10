import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargin.cardMargin,
            color: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                  child: Text(
                'ali',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: Colors.amber,
            elevation: 1,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 200,
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.error,
            elevation: 1,
            shape: CircleBorder(),
            child: SizedBox(
              height: 100,
              width: 200,
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                  child: Text(
                'Veli',
                style: TextStyle(color: Colors.black),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(20);
}

class _CustomCard extends StatelessWidget {
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  _CustomCard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      color: Colors.white,
      elevation: 1,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
