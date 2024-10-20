import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';
import 'package:merchant_app/widgets/notification_icon.dart'; // استيراد ويدجت الإشعارات

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int notificationCount;
  final bool showSearch; // إضافة المتغير للتحكم في عرض مربع البحث

  const CustomAppBar({
    Key? key,
    required this.title,
    this.notificationCount = 0, // عدد التنبيهات الافتراضي
    this.showSearch =
        false, // إذا لم يُمرر، سيكون العرض الافتراضي لمربع البحث هو "لا"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NotificationIcon(
              notificationCount: notificationCount), // استدعاء ويدجت الإشعارات
          SizedBox(width: 10),
          // عرض العنوان أو مربع البحث بناءً على showSearch
          if (showSearch)
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // تغيير مكان الظل
                    ),
                  ],
                ),
                child: TextField(
                  textDirection: TextDirection.rtl, // لضبط النص من اليمين
                  decoration: InputDecoration(
                    hintText: 'البحث',
                    prefixIcon:
                        Icon(Icons.search, color: AppColors.secondaryColor),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            )
          else
            Text(
              title, // عرض العنوان إذا كان showSearch = false
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 20,
                color: AppColors.primaryColor,
              ),
            ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60); // تحديد ارتفاع الـ AppBar
}
