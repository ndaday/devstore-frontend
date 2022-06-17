import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

import '../../widgets/chat_tile.dart';

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
      body: Column(
        children: [
          listChat(),
        ],
      ),
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        color: backgroundLight,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.headset_mic, size: 72),
            SizedBox(height: 16),
            Text('Opss no message yet?'),
            SizedBox(height: 10),
            Text('You have never  done a transaction'),
            SizedBox(height: 16),
            Container(
              height: 40,
              child: ElevatedButton(
                child: Text('Explore Store'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listChat() {
    return Expanded(
        child: Container(
      color: backgroundLight,
      width: double.infinity,
      child: ListView(
        padding: paddingHorizon14,
        children: [
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
        ],
      ),
    ));
  }
}
