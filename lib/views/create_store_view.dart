import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/custom_button.dart';

class CreateStoreView extends StatefulWidget {
  @override
  _CreateStoreViewState createState() => _CreateStoreViewState();
}

class _CreateStoreViewState extends State<CreateStoreView> {
  String? _selectedCategory;
  final List<String> _categories = ['قسم 1', 'قسم 2', 'قسم 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            // عنوان الصفحة
            Text(
              'انشاء متجر',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.image,
                    size: 50,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ارفع شعار المتجر',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 14,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'اسم المتجر',
                filled: true,
                fillColor: AppColors.whiteColor1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'عنوان المتجر',
                filled: true,
                fillColor: AppColors.whiteColor1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteColor1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              hint: Text('اختر القسم المتجر'),
              value: _selectedCategory,
              icon: Icon(Icons.arrow_drop_down, color: AppColors.primaryColor),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
              items: _categories
                  .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'تأكيد',
              onPressed: () {},
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
