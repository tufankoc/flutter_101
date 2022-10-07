import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            width: 200,
            height: 200,
            constraints: const BoxConstraints(
              maxWidth: 150,
              minWidth: 100,
              maxHeight: 100,
            ),
            child: Text('b' * 100),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.red,
                //shape: BoxShape.circle,
                border: Border.all(
                  width: 100,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
