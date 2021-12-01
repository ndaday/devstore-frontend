import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Support'),
        centerTitle: true,
        backgroundColor: backgroundPrimary,
        elevation: 0,
      ),
      body: Container(
        child: Text('Chat Page'),
      ),
    );
  }
}
