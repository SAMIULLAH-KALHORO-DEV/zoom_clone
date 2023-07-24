import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AutoMethods _autoMethods = AutoMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Start or Joining Meeting",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        // Image
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Image.asset("assets/images/onboarding.jpg"),
        ),
        // Login Button
        CustomBotton(
          text: "Google Sign In",
          onPressed: () async {
            bool res = await _autoMethods.signInWithGoogle(context);
            if (res) {
              // ignore: prefer_const_constructors, use_build_context_synchronously
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            }
          },
        )
      ]),
    );
  }
}
