import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class FormInputWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Widget iconField;
  final bool obscureText;
  final bool autoFocus;
  // final String validatorText;

  const FormInputWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.iconField,
    required this.obscureText,
    required this.autoFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: titleTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            // validator: (email) =>
            //     EmailValidator.validate(email!) ? null : validatorText,
            style: titleTextStyle,
            obscureText: obscureText,
            autofocus: autoFocus,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              hintText: hintText,
              hintStyle: subTextStyle,
              prefixIcon: iconField,
            ),
          ),
        ],
      ),
    );
  }
}
