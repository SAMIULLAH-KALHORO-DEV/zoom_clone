import 'package:flutter/material.dart';
import 'package:zoom_clone/firebase_options.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Zoom Clone",
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        routes: {
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen()
        },
        home: const LoginScreen());
  }
}
