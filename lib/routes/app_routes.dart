import 'package:get/get.dart';
import 'package:merchant_app/views/create_store_view.dart';
import 'package:merchant_app/views/home_view.dart';
import 'package:merchant_app/views/login_view.dart';
import 'package:merchant_app/views/main_screen.dart';
import 'package:merchant_app/views/register_view.dart';
import 'package:merchant_app/views/verification_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/home', page: () => HomeView()),
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/register', page: () => RegisterView()),
    GetPage(name: '/verification', page: () => VerificationView()),
    GetPage(name: '/mainScreen', page: () => MainScreen()),
    GetPage(name: '/createstoreview', page: () => CreateStoreView()),
  ];
}
