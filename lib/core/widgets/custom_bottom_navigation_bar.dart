import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColor.cherryBlossomPink,
          ),
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTap,
              unselectedItemColor: Colors.black,
              unselectedIconTheme: IconThemeData(
                size: 30,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: '',
                  activeIcon: activeIcon(Icons.home),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: '',
                  activeIcon: activeIcon(Icons.shopping_cart),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: '',
                    activeIcon: activeIcon(Icons.favorite)),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),
                  label: '',
                  activeIcon: activeIcon(Icons.person),
                ),
              ]),
        ),
      ),
    );
  }

  Widget activeIcon(IconData icon) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.mainPink,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
