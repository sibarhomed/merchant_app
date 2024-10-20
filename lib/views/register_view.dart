import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/custom_text_field.dart';
import 'package:merchant_app/widgets/custom_button.dart';

class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
              label: 'الاسم الكامل',
              icon: Icons.account_circle_outlined,
            ),
            SizedBox(height: 10),
            CustomTextField(
              label: 'البريد الإلكتروني',
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 10),
            CustomTextField(
              label: 'كلمة السر',
              icon: Icons.lock_outlined,
              obscureText: true,
            ),
            SizedBox(height: 10),
            CustomTextField(
              label: 'تأكيد كلمة السر',
              icon: Icons.lock_outlined,
              obscureText: true,
            ),
            SizedBox(height: 10),
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
                Expanded(
                  child: Text(
                    'عند التسجيل على الموقع يعني انك موافق على شروط الاستخدام',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: 'التالي',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Get.offNamed('/login');
              },
              child: Text('لدي حساب بالفعل. تسجيل دخول',
                  style: TextStyle(color: AppColors.primaryColor)),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
