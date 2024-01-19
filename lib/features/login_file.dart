import 'package:flutter/material.dart';

import 'login_ctrl.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            void googleLoginButton(){
              LoginCtrl.signInWithGoogle(context);

            };
          },  // Replace with the desired action
          child: Text('Binuu'), // Replace with the actual button text
        ),
      ),
    );
  }
}
