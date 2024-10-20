import 'package:flutter/material.dart';
import 'package:merchant_app/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'الرئيسية',
        notificationCount: 5,
      ),
      body: Container(),
    );
  }
}
