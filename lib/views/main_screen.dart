import 'package:flutter/material.dart';
import 'package:merchant_app/views/home_view.dart';
import 'package:merchant_app/views/profile_view.dart';
import 'package:merchant_app/views/store_view.dart';
import 'package:merchant_app/views/representatives_view.dart';
import 'package:merchant_app/views/orders_view.dart';
import 'package:merchant_app/utils/constants_colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    StoreView(),
    OrdersView(),
    ProfileView(),
    RepresentativesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
          Positioned(
            top: -25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(0, Icons.home, 'الرئيسية'),
                _buildNavItem(1, Icons.store, 'المخزن'),
                _buildNavItem(2, Icons.inventory, 'الطلبات'),
                _buildNavItem(3, Icons.person, 'البروفايل'),
                _buildNavItem(4, Icons.people, 'المندوبين'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData iconData, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          index == _currentIndex
              ? Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.scaffoldBackgroundColor,
                      width: 5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      iconData,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                )
              : Transform.translate(
                  offset: Offset(0, 10),
                  child: Icon(
                    iconData,
                    color: AppColors.secondaryColor,
                    size: 24,
                  ),
                ),
          SizedBox(height: 4),
          index == _currentIndex
              ? Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'ElMessiri',
                    color: AppColors.primaryColor,
                    fontSize: 12,
                  ),
                )
              : Transform.translate(
                  offset: Offset(0, 10),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
