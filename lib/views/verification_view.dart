import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/custom_button.dart';
import 'package:merchant_app/widgets/custom_otp_fields.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.primaryColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'تأكيد الحساب',
          style: TextStyle(
            fontFamily: AppFonts.primaryFont,
            color: AppColors.primaryColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90),
            Text(
              'الرجاء ادخال كلمة التأكيد المكونة من 6 أرقام التي ستصلك على بريدك الإلكتروني',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                fontSize: 14,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'mohammad313@gmail.com',
              style: TextStyle(
                fontFamily: AppFonts.primaryFont,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 100),
            CustomOtpFields(),
            SizedBox(height: 70),
            CustomButton(
              text: 'تأكيد',
              onPressed: () {},
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لم استلم الرسالة؟',
                  style: TextStyle(color: AppColors.secondaryColor),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'اعادة ارسال رسالة',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'اعادة ارسال الرمز: 00:30',
              style: TextStyle(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
