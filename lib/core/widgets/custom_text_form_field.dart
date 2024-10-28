import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
     this.prefixIcon,
    this.fillColor,
    this.height,
    this.suffixIcon, this.hintStyle, this.onChanged, this.controller, this.onTap,

  });

  bool obscureText;
  final String hintText;
  final IconData? prefixIcon;
  final Color? fillColor;
  final double? height;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          onTap:onTap ,
          decoration: InputDecoration(
            fillColor: fillColor ?? AppColor.lightGrey,
            filled: true,
            hintText: hintText,
            hintStyle: hintStyle ?? TextStyle(
              fontSize: 15,
              fontWeight: FontWeightHelper.regular,
              color: Colors.black,
            ),
            prefixIcon: Icon(
              prefixIcon ?? Icons.abc,
              size: 23.sp,
              color: AppColor.darkPink,
            ),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.mainPink
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.red
              ),
              borderRadius: BorderRadius.circular(5),
            ),

          ),
          obscureText: obscureText,
        ),
        SizedBox(
          height:height?? 20.h,
        ),
      ],
    );
  }
}
