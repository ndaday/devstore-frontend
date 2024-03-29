import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/footer.dart';
import '../../widgets/form_input.dart';
import '../../widgets/header.dart';
import '../../widgets/loader_dialog.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController usernameController =
      TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      LoaderDialog(
        loaderText: 'Signing',
      ).showLoaderDialog(context);
      if (await authProvider.register(
        name: nameController.text,
        username: usernameController.text,
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
              'Failed to Register',
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
                  iconField: Icon(Icons.person, color: primaryColor),
                  obscureText: false,
                  autoFocus: true,
                  controller: nameController,
                ),
                SizedBox(height: 15),
                FormInputWidget(
                  labelText: 'Username',
                  hintText: 'Your Username',
                  iconField: Icon(Icons.account_circle, color: primaryColor),
                  obscureText: false,
                  autoFocus: true,
                  controller: usernameController,
                ),
                SizedBox(height: 15),
                FormInputWidget(
                  labelText: 'Email Address',
                  hintText: 'Your Email Address',
                  iconField: Icon(Icons.mail, color: primaryColor),
                  obscureText: false,
                  autoFocus: true,
                  controller: emailController,
                ),
                SizedBox(height: 15),
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
                  nameButton: 'Sign Up',
                  onPressed: handleSignUp,
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
