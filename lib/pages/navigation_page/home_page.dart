import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';
import '../../widgets/categories.dart';
import '../../widgets/header.dart';
import '../../widgets/new_arrivals.dart';
import '../../widgets/popular_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    return Container(
      margin: EdgeInsets.only(top: 30, right: 12, left: 14),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderWidget(
                  titleText: 'Hello, ${user.name}',
                  subtitleText: '${user.username}'),
              Icon(
                Icons.person_pin,
                size: 60,
                color: secondaryColor,
              ),
            ],
          ),
          CategoriesList(),
          PopularProduct(),
          NewArrivals(),
        ],
      ),
    );
  }
}
