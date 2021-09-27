import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

// NOTE: Reusable Widget Header
class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {Key? key, required this.titleText, required this.subtitleText})
      : super(key: key);

  final String titleText;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: titleTextStyle.copyWith(fontSize: 24, fontWeight: medium),
          ),
          SizedBox(height: 4),
          Text(
            subtitleText,
            style: subTextStyle,
          ),
        ],
      ),
    ));
  }
}
