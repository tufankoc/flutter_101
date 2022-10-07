import 'package:flutter/material.dart';

class ScaffoldLernView extends StatelessWidget {
  const ScaffoldLernView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples'),
      ),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomSheet: const Text('data'),
      body: const Text(
        'data',
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_num_sharp,
              ),
              label: 'a'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_num_sharp,
              ),
              label: 'c')
        ],
      ),
    );
  }
}
