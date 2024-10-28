import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerOffer extends StatelessWidget {
  const ContainerOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColor.cherryBlossomPink,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppImages.imageOffer,
              width: 87.w,
              height: 75.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            children: [
              Text(
                '33% OFF',
                style: AppTextStyle.font32PinkMedium
                    .copyWith(fontFamily: FontFamilyHelper.k2dFont),
              ),
              Text(
                '5-15 Nov',
                style: AppTextStyle.font14BlackRegular.copyWith(
                  fontFamily: FontFamilyHelper.poppinsFont,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
