import 'package:flutter/material.dart';

class DissmisibleWidget extends StatefulWidget {
  const DissmisibleWidget({super.key});

  @override
  State<DissmisibleWidget> createState() => _DissmisibleWidgetState();
}

class _DissmisibleWidgetState extends State<DissmisibleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      "Apple",
      "Banana",
      "Grapes",
      "Kiwi",
      "Mango",
      "Orange"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Dissmisible Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.redAccent,
                      content: Text(
                        fruits[index],
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        fruits[index],
                      ),
                    ),
                  );
                }
              },
              key: Key(fruit),
              child: Container(
                color: Colors.blue,
                child: Card(
                  color: Colors.white38,
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
