import 'package:flutter/material.dart';
import 'package:merchant_app/widgets/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'البروفايل',
        notificationCount: 0,
      ),
      body: Container(),
    );
  }
}
