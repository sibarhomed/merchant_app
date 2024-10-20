import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/custom_text_field.dart';
import 'package:merchant_app/widgets/custom_button.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            CustomTextField(
              label: 'البريد الإلكتروني',
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: 'كلمة السر',
              icon: Icons.lock_outlined,
              obscureText: true,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: AppColors.primaryColor,
                    ),
                    Text(
                      'تذكر كلمة السر',
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'نسيت كلمة السر؟',
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: 'التالي',
              onPressed: () {
                Get.offNamed('/mainScreen');
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.offNamed('/register');
              },
              child: RichText(
                text: const TextSpan(
                  text: 'ليس لدي حساب. ',
                  style: TextStyle(
                    fontFamily: AppFonts.primaryFont,
                    color: AppColors.secondaryColor,
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: 'إنشاء حساب جديد',
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
