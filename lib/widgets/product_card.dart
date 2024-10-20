import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final int salesCount;
  final String price;
  final int quantity;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.salesCount,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 12.0), // المسافات العلوية والسفلية
      decoration: BoxDecoration(
        color: Colors.white, // خلفية بيضاء
        border: Border(
          bottom: BorderSide(
              color: Colors.grey.shade300, width: 2), // حدود خفيفة أسفل كل صف
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // عمود اسم المنتج
          Expanded(
            flex: 1,
            child: Text(
              productName,
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.right, // محاذاة النص إلى اليمين
            ),
          ),
          // عمود السعر
          Expanded(
            flex: 2,
            child: Text(
              price,
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // محاذاة النص في الوسط
            ),
          ),
          // عمود العدد
          Expanded(
            flex: 1,
            child: Text(
              '$quantity',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // محاذاة النص في الوسط
            ),
          ),
          // عمود عدد المبيعات
          Expanded(
            flex: 1,
            child: Text(
              '$salesCount',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // محاذاة النص في الوسط
            ),
          ),
        ],
      ),
    );
  }
}
