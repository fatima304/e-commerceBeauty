import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandItem extends StatelessWidget {
  const BrandItem(
      {super.key,
      required this.brandName,
      this.textStyle,
      this.colorContainer,
      this.onTap,
      this.shadowColor});

  final String brandName;

  final TextStyle? textStyle;

  final Color? colorContainer;

  final Color? shadowColor;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        decoration: BoxDecoration(
            color: colorContainer ?? AppColor.mainPink,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: shadowColor ?? Colors.white,
                  offset: Offset(2, 3),
                  blurRadius: 5),
            ]),
        child: Center(
          child: Text(
            brandName,
            style: textStyle ??
                AppTextStyle.font14WhiteSemiBold
                    .copyWith(fontFamily: FontFamilyHelper.leagueSpartanFont),
          ),
        ),
      ),
    );
  }
}
