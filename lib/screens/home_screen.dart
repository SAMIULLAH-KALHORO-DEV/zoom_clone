import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(color: Colors.red),
          flex: 1,
        ),
        Expanded(
          child: Container(color: Colors.blue),
          flex: 1,
        ),
        Expanded(
          child: Container(color: Colors.green),
          flex: 1,
        ),
      ]),
    );
  }
}
