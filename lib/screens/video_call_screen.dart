import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/utils/colors.dart';

class VidoeCallScreen extends StatefulWidget {
  const VidoeCallScreen({super.key});

  @override
  State<VidoeCallScreen> createState() => _VidoeCallScreenState();
}

final AutoMethods _autoMethods = AutoMethods();
late TextEditingController meetingIdController;
late TextEditingController nameController;

@override
class _VidoeCallScreenState extends State<VidoeCallScreen> {
  void initState() {
    meetingIdController = TextEditingController();
    nameController = TextEditingController(text: _autoMethods.user.displayName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          title: const Text("Join a Meeting", style: TextStyle(fontSize: 18)),
          centerTitle: true),
      body: Column(children: [
        SizedBox(
            height: 60,
            child: TextField(
                keyboardAppearance: Brightness.dark,
                controller: meetingIdController,
                maxLines: 1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    fillColor: secondaryBackgroundColor,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    border: InputBorder.none,
                    hintText: "Room ID"))),
        SizedBox(
            height: 60,
            child: TextField(
                keyboardAppearance: Brightness.dark,
                controller: nameController,
                maxLines: 1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    fillColor: secondaryBackgroundColor,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    border: InputBorder.none,
                    hintText: "Name"))),
      ]),
    );
  }
}
