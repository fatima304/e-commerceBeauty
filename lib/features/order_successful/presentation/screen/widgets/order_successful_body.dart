import 'package:beauty_ecommerce/core/helper/app_lottie.dart';
import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class OrderSuccessfulBody extends StatelessWidget {
  const OrderSuccessfulBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            AppLottie.success,
          ),
          SizedBox(
            height: 26.h,
          ),
          Text(
            'Congratulation!',
            style: AppTextStyle.font32PinkSemiBold
                .copyWith(fontFamily: FontFamilyHelper.leagueSpartanFont),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your order has been successfully placed',
            textAlign: TextAlign.center,
            style: AppTextStyle.font24BlackMedium
                .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
          ),
          SizedBox(
            height: 25.h,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.cherryBlossomPink),
              padding: EdgeInsets.symmetric(
                horizontal: 29.w,
                vertical: 26.h,
              ),
              child: Text(
                'Continue shopping',
                style: AppTextStyle.font20BlackSemiBold.copyWith(
                  fontFamily: FontFamilyHelper.leagueSpartanFont,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
