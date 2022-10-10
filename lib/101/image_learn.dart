import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imagesss')),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 100,
            child: Image.asset(
              "assets/images/applewithbooks.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: Image.asset(
              ImageItems().appleWitgBooks,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/IBooks_%28OS_X%29.svg/1200px-IBooks_%28OS_X%29.svg.png"),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWitgBooks = "assets/images/applewithbooks.png";
}
