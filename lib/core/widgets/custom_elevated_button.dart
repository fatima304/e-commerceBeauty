import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.width,
    this.height, this.padding,
  });

  final String buttonText;
  final void Function()? onPressed;

  final double? width;

  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.darkPink,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 44.w, vertical: 17.5.h),
        minimumSize: Size(width ?? 300, height ?? 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(46),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeightHelper.regular,
        ),
      ),
    );
  }
}
