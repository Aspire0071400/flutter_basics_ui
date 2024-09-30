import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Custom Font',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 18, fontFamily: 'Mono'),
          ),
        ),
      ),
    );
  }
}
