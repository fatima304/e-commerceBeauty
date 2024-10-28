import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';


class LoadingItem extends StatelessWidget {
  const LoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 241.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Shimmer.fromColors(
        baseColor: AppColor.lightGrey,
        highlightColor: AppColor.darkGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 150.w,
                height: 120.h,
                color: Colors.grey[300], // Placeholder for the image
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              width: 150.w,
              height: 20.h,
              color: Colors.grey[300],
            ),
            SizedBox(height: 8.h),
            Container(
              width: 100.w,
              height: 20.h,
              color: Colors.grey[300],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100.w,
                  height: 40.h,
                  color: Colors.grey[300],
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
