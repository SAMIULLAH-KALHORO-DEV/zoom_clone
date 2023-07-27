import 'package:flutter/material.dart';
import 'package:jitsi_meet_v1/jitsi_meet.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/meeting_option.dart';

class VidoeCallScreen extends StatefulWidget {
  const VidoeCallScreen({super.key});

  @override
  State<VidoeCallScreen> createState() => _VidoeCallScreenState();
}

final AutoMethods _autoMethods = AutoMethods();
late TextEditingController meetingIdController;
late TextEditingController nameController;
bool isAudioMuted = true;
bool isVideoMuted = true;

@override
class _VidoeCallScreenState extends State<VidoeCallScreen> {
  @override
  void initState() {
    meetingIdController = TextEditingController();
    nameController = TextEditingController(text: _autoMethods.user.displayName);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    meetingIdController.dispose();
    nameController.dispose();
    JitsiMeet.removeAllListeners();
  }

  _joinMeeting() { }
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
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    hintText: "Name"))),
        const SizedBox(height: 20),
        InkWell(
          onTap: _joinMeeting,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Join",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(height: 20),
        MeetingOption(
          text: "Mute Audio ",
          isMute: isAudioMuted,
          onChange: onAudioMuted,
        ),
        MeetingOption(
            text: "Turn of my Video ",
            isMute: isVideoMuted,
            onChange: onVideoMuted),
      ]),
    );
  }

  onAudioMuted(bool val) {
    setState(() {
      isAudioMuted = val;
    });
  }

  onVideoMuted(bool val) {
    setState(() {
      isVideoMuted = val;
    });
  }
}
