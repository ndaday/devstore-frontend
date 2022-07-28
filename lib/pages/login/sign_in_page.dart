import 'package:devstore/theme.dart';
import 'package:devstore/widgets/loader_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/footer.dart';
import '../../widgets/form_input.dart';
import '../../widgets/header.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    handleSignIn() async {
      LoaderDialog(
        loaderText: 'Signing',
      ).showLoaderDialog(context);
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        LoaderDialog(
          loaderText: '',
        ).hideLoaderDialog(context);
        Navigator.pushNamedAndRemoveUntil(
            context, '/main-page', (Route<dynamic> route) => false);
      } else {
        LoaderDialog(
          loaderText: '',
        ).hideLoaderDialog(context);
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
