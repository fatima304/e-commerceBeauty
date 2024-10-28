import 'dart:async';

import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {

  _startDelay() {
    Timer(
      const Duration(seconds: 2),
      _goNext,
    );
  }

  _goNext(){
    Navigator.of(context).pushReplacementNamed(Routes.onBoardingScreen);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(AppImages.makeupBackground , ),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 160.h,
          ),
          Center(
            child: Text(
              'Beauty' ,
              style: AppTextStyle.font80WhiteBold.copyWith(
                fontFamily: FontFamilyHelper.rubikWetPaintRegularFont
              ),
            ),
          ),
        ],
      ),
    );
  }
}
