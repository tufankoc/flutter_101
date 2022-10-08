import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.headline5,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Select',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                return Colors.green;
              }),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Send'),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.wallet),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.safety_check_outlined),
            label: Text("Safe"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: EdgeInsets.all(10),
              shape: CircleBorder(),
            ),
            child: Text(
              'dene',
              style: TextStyle(color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text('button'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 40,
                right: 40,
              ),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
