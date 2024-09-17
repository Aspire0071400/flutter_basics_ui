import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      'Orange',
      'Mango',
      'Papaya',
      'Grapes',
      'Apple',
      'Kiwi',
      'Banana'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body:
          // ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       title: Text(fruits[index]),
          //       tileColor: Colors.amber,
          //     );
          //   },
          // ),

          GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: fruits.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.black12,
            child: Center(child: Text(fruits[index])),
          );
        },
      ),
    );
  }
}
