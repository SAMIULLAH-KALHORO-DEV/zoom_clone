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
          flex: 1,
          child: Container(color: Colors.red),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.blue),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.green),
        ),
      ]),
    );
  }
}
