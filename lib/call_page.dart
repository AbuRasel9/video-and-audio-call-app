
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatefulWidget {
  final String callID;

  const CallPage(this.callID, {super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  String userId=Random().nextInt(10000).toString();
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appSign: "e5d68688d800a94d9ebbc41300f79195ea42aa63c833e28f2e1e1b851c7d3b1e",
        appID: 54958143,
        callID: widget.callID,
        userID: userId,
        userName: "user_$userId",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),);
  }
}
