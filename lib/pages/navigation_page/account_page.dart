import 'package:devstore/widgets/loader_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../widgets/custom_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Account'),
        CustomButton(
          nameButton: 'Logout',
          onPressed: () async {
            LoaderDialog(loaderText: 'Loging out').showLoaderDialog(context);
            await authProvider.logout();
            LoaderDialog(loaderText: '').hideLoaderDialog(context);
            Navigator.pushNamedAndRemoveUntil(
                context, '/main-page', (Route<dynamic> route) => false);
          },
        ),
      ],
    ));
  }
}
