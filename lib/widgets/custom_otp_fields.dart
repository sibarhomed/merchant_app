import 'package:flutter/material.dart';

class CustomOtpFields extends StatelessWidget {
  const CustomOtpFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
        );
      }),
    );
  }
}
