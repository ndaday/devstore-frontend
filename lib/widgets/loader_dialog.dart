import 'package:flutter/material.dart';

class LoaderDialog extends StatelessWidget {
  const LoaderDialog({Key? key, required this.loaderText}) : super(key: key);
  final String loaderText;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  void showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 7), child: Text(loaderText)),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  hideLoaderDialog(BuildContext context) {
    return Navigator.pop(context);
  }
}
