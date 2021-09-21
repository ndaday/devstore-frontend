import 'package:devstore/theme.dart';
import 'package:devstore/widget/custom_button.dart';
import 'package:devstore/widget/footer.dart';
import 'package:devstore/widget/form_input.dart.dart';
import 'package:devstore/widget/header.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: paddingAll,
            height: deviceHeight - kToolbarHeight + 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(
                  titleText: 'Sign Up',
                  subtitleText: 'Sign up and happy shopping',
                ),
                Spacer(),
                FormInputWidget(
                  labelText: 'Full Name',
                  hintText: 'Your Full Name',
                  iconField: Icon(Icons.person),
                  obscureText: false,
                  autoFocus: true,
                ),
                SizedBox(height: 15),
                FormInputWidget(
                  labelText: 'Username',
                  hintText: 'Your Username',
                  iconField: Icon(Icons.account_circle),
                  obscureText: false,
                  autoFocus: true,
                ),
                SizedBox(height: 15),
                FormInputWidget(
                  labelText: 'Email Address',
                  hintText: 'Your Email Address',
                  iconField: Icon(Icons.mail),
                  obscureText: false,
                  autoFocus: true,
                ),
                SizedBox(height: 15),
                FormInputWidget(
                  labelText: 'Password',
                  hintText: 'Your Password',
                  iconField: Icon(Icons.lock),
                  obscureText: true,
                  autoFocus: true,
                ),
                SizedBox(height: 30),
                CustomButton(
                  nameButton: 'Sign Up',
                  onPressed: () {
                    final snackBar = SnackBar(content: Text('Sign In'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                Spacer(),
                FooterWidget(
                  footerText: 'Already have an account?',
                  buttonText: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
