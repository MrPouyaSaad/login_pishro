// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.login,
              size: 84,
            ),
            const SizedBox(
              height: 64,
            ),
            const MyTextField(
              icon: Icon(Icons.person),
              lable: 'نام کاربری',
            ),
            const SizedBox(
              height: 16,
            ),
            const MyTextField(
              icon: Icon(Icons.lock),
              lable: 'رمز عبور',
            ),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade800,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 68),
                maximumSize: const Size(double.infinity, 68),
                padding: const EdgeInsets.all(0),
                alignment: Alignment.center,
              ),
              child: Text(
                'ورود',
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.lable,
    required this.icon,
  }) : super(key: key);
  final String lable;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent.shade700, width: 2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelText: lable,
        prefixIcon: icon,
      ),
    );
  }
}
