import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomePage extends StatefulWidget {
  final String callId; //Diffrent from every one
  final String userId; // Random and Unique for everyone
  final String userName;

  const HomePage({super.key, required this.callId, required this.userId, required this.userName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: 1497610177,
        appSign:
            "1373f77e053c58b7febc280bf967b95ef5b57d6f5b59511fb8cc6bd5a724c4aa",
        callID: widget.callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (context) => Navigator.pop(context),
        userID: widget.userId,
        userName: widget.userName,
        onDispose: () {}, //onDispose is what u want to do after call ends
      ),
    ));
  }
}
