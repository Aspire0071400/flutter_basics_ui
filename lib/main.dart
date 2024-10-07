import 'package:flutter/material.dart';
import 'package:flutter_basics_ui/widgets/login.dart';
import 'package:flutter_basics_ui/widgets/custom_font.dart';
import 'package:flutter_basics_ui/widgets/dissmisible.dart';
import 'package:flutter_basics_ui/widgets/drawer.dart';
import 'package:flutter_basics_ui/widgets/snackbar.dart';
import 'package:flutter_basics_ui/widgets/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
