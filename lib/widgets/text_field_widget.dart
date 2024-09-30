import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Text Field Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.red, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.red, width: 5),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.grey, width: 5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(textController.text)));
                textController.clear();
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.amber)),
              child: const Text('Show Text'),
            ),
            Container(
              height: 270,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.redAccent),
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                //width: 300,
                fit: BoxFit.fill,
                //filterQuality: FilterQuality.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
