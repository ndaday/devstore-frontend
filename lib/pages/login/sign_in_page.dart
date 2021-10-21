import 'package:devstore/providers/auth_provider.dart';
import 'package:devstore/theme.dart';
import 'package:devstore/widget/custom_button.dart';
import 'package:devstore/widget/footer.dart';
import 'package:devstore/widget/form_input.dart.dart';
import 'package:devstore/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    handleSignIn() async {
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/main-page', (Route<dynamic> route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Failed to Login',
              textAlign: TextAlign.center,
            ),
            backgroundColor: alertColor,
          ),
        );
      }
    }

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
                controller: emailController,
              ),
              SizedBox(height: 20),
              FormInputWidget(
                labelText: 'Password',
                hintText: 'Your Password',
                iconField: Icon(Icons.lock, color: primaryColor),
                obscureText: true,
                autoFocus: true,
                controller: passwordController,
              ),
              SizedBox(height: 30),
              CustomButton(
                nameButton: 'Sign In',
                onPressed: handleSignIn,
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
