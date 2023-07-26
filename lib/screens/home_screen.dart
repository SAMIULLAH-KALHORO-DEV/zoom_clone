import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

import 'history_meeting_screen.dart';
import 'meeting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
     MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text("Contects"),
    const Text("Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // App bar
      //
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Meet & Chat "),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: pages[_page],

      //
      // Bottom Nav Bar
      //
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: "Meet & Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: "Meetings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Contacts "),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Setting"),
          ]),
    );
  }
}
