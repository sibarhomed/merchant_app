import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant_app/controllers/onboarding_controller.dart';
import 'package:merchant_app/utils/constants_colors.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: PageView(
        children: [
          _buildOnboardingPage(
            title: 'Welcome to Merchant App',
            description: 'This is an app to manage your store efficiently.',
            imagePath: 'assets/images/onboarding1.png',
          ),
          _buildOnboardingPage(
            title: 'Track your sales',
            description: 'Keep track of your daily, weekly, and monthly sales.',
            imagePath: 'assets/images/onboarding2.png',
          ),
          _buildOnboardingPage(
            title: 'Analyze your data',
            description: 'Get insights from your sales data easily.',
            imagePath: 'assets/images/onboarding3.png',
            isLastPage: true,
            onGetStarted: () {
              controller.completeOnboarding();
              Get.offNamed('/login');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String title,
    required String description,
    required String imagePath,
    bool isLastPage = false,
    VoidCallback? onGetStarted,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontFamily: AppFonts.primaryFont,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppFonts.primaryFont,
              fontSize: 16,
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        SizedBox(height: 30),
        if (isLastPage)
          ElevatedButton(
            onPressed: onGetStarted,
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor),
            child: Text(
              'Get Started',
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                color: AppColors.whiteColor,
              ),
            ),
          ),
      ],
    );
  }
}
