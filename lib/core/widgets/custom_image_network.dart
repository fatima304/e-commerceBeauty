import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/app_images.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({super.key, required this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.network(imagePath ?? AppImages.makeupFake,
        width: 150.w,
        height: 120.h, errorBuilder: (context, error, stackTrace) {
      return Image.network(
        AppImages.makeupFake,
        width: 150.w,
        height: 120.h,
      );
    });
  }
}
