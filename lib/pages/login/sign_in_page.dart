import 'package:devstore/theme.dart';
import 'package:devstore/widget/custom_button.dart';
import 'package:devstore/widget/footer.dart';
import 'package:devstore/widget/form_input.dart.dart';
import 'package:devstore/widget/header.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimary,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          padding: paddingAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                titleText: 'Sign in',
                subtitleText: 'Sign In to Continue',
              ),
              Spacer(),
              FormInputWidget(
                labelText: 'Email Address',
                hintText: 'Your Email Address',
                iconField: Icon(Icons.mail, color: primaryColor),
                obscureText: false,
                autoFocus: true,
              ),
              SizedBox(height: 20),
              FormInputWidget(
                labelText: 'Password',
                hintText: 'Your Password',
                iconField: Icon(Icons.lock, color: primaryColor),
                obscureText: true,
                autoFocus: true,
              ),
              SizedBox(height: 30),
              CustomButton(
                nameButton: 'Sign In',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main-page', (Route<dynamic> route) => false);
                },
              ),
              Spacer(),
              FooterWidget(
                footerText: 'Dont have an account?',
                buttonText: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
