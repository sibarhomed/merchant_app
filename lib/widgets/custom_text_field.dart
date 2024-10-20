import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor1,
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: AppFonts.primaryFont,
          color: AppColors.secondaryColor,
        ),
        prefixIcon: Icon(icon, color: AppColors.secondaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
