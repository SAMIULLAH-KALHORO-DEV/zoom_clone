import 'package:flutter/material.dart';
// import 'package:qr_scanner/qr_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation:0.0)),
      debugShowCheckedModeBanner: false,
      title: "QR Scanner",
      // home: const QRscreen(),
    );
  }
}
