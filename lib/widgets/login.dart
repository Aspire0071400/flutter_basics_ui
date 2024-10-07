import 'package:flutter/material.dart';
import 'package:flutter_basics_ui/widgets/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final email = 'test@gmail.com';
    final pass = 'qwerty';
    final emailController = TextEditingController();
    final passController = TextEditingController();
    final borderDecor = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.blue),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Form',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  label: const Text('Email'),
                  border: borderDecor,
                  enabledBorder: borderDecor,
                  focusedBorder: borderDecor,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  border: borderDecor,
                  enabledBorder: borderDecor,
                  focusedBorder: borderDecor,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passController.text.isNotEmpty) {
                    if (emailController.text == email &&
                        passController.text == pass) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    } else {
                      Fluttertoast.showToast(msg: 'Incorrect Credentials');
                    }
                  } else {
                    Fluttertoast.showToast(msg: 'Fields must be filled');
                  }
                },
                style: ButtonStyle(
                    minimumSize: const WidgetStatePropertyAll(Size(300, 40)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
