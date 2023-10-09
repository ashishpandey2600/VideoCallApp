import 'package:flutter/material.dart';
import 'package:videocallapp/callLogScreen.dart';
import 'package:videocallapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(callId: "54321",userId: "1234",userName: "Ashish"),
      // home: CallLogScreen(),
    );
  }
}
