import 'package:flutter/material.dart';
import 'package:personalitytest/screens/login_signup.dart';





void main() {
  runApp(const LoginSignupUI());
}




class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({super.key});




  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      home: LoginSignupScreen(),
    );
  }
}
