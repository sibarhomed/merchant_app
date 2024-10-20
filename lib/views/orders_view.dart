import 'package:flutter/material.dart';
import 'package:merchant_app/widgets/custom_app_bar.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'الطلبات',
        notificationCount: 3,
      ),
      body: Container(),
    );
  }
}
