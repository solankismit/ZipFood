import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: Text("REGISTRATION SCREEN"),
        ),
      ),
    );
  }
}

