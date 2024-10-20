import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/custom_app_bar.dart'; // استيراد CustomAppBar
import 'package:merchant_app/widgets/product_card.dart'; // استيراد ويدجت الكارد

class StoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'المخزن', // عنوان الصفحة
        notificationCount: 5,
        showSearch: true, // تمرير عدد الإشعارات
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:
              10, // عدد المنتجات (يمكن تعديله بناءً على البيانات الفعلية)
          itemBuilder: (context, index) {
            // استخدام ويدجت ProductCard لكل منتج
            return ProductCard(
              productName: 'عطر غزالة',
              salesCount: 5,
              price: '25,000',
              quantity: 47,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // منطق إضافة منتج جديد
        },
        backgroundColor: AppColors.primaryColor,
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}
