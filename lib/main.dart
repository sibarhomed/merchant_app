import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant_app/routes/app_routes.dart';
import 'package:merchant_app/theme/app_theme.dart';
import 'package:merchant_app/views/create_store_view.dart';
import 'package:merchant_app/views/login_view.dart';
import 'package:merchant_app/views/main_screen.dart';
import 'package:merchant_app/views/onboarding_view.dart';
import 'package:merchant_app/views/register_view.dart';
import 'package:merchant_app/views/verification_view.dart';

void main() {
  runApp(MerchantApp());
}

class MerchantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Merchant App',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: LoginView(),
      getPages: AppRoutes.routes,
    );
  }
}
