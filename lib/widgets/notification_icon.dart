import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';

class NotificationIcon extends StatelessWidget {
  final int notificationCount;

  const NotificationIcon({
    Key? key,
    this.notificationCount = 0, // عدد التنبيهات الافتراضي
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications,
          color: AppColors.primaryColor,
          size: 30,
        ),
        if (notificationCount > 0)
          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              constraints: BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              child: Text(
                '$notificationCount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
