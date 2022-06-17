import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        margin: marginTop14,
        child: Column(children: [
          Row(
            children: [
              Icon(Icons.supervised_user_circle, size: 48, color: white),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                    Text(
                      'Good night, this item is loremjdb dbfd bhdbfdfn dfb',
                      overflow: TextOverflow.ellipsis,
                      style: whiteTextStyle,
                    ),
                  ],
                ),
              ),
              Text('1 mins ago', style: whiteTextStyle),
            ],
          ),
          SizedBox(width: 12),
          Divider(
            thickness: 1,
            color: backgroundDark,
          ),
        ]),
      ),
    );
  }
}
