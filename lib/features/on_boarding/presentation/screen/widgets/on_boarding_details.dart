import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/screen/widgets/three_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/theme/font_family_helper.dart';

class OnBoardingDetails extends StatelessWidget {
  const OnBoardingDetails({super.key, required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 22.h,
        ),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Routes.loginScreen);
                },
                child: Text(
                  'Skip',
                  style: AppTextStyle.font18BlackSemiBold
                      .copyWith(fontFamily: FontFamilyHelper.mulishFont),
                ),
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            Image.asset(
              onBoardingModel.imagePath,
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              onBoardingModel.title,
              textAlign: TextAlign.center,
              style: AppTextStyle.font28PinkExtraBold
                  .copyWith(fontFamily: FontFamilyHelper.sourceSerifFont),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              onBoardingModel.subtitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.font14DarkGreySemiBold.copyWith(
                fontFamily: FontFamilyHelper.mulishFont,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ThreeCircle(),
                GestureDetector(
                  onTap: cubit.currentPageIndex == 2
                      ? () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.loginScreen);
                        }
                      : () {
                          cubit.pageController.animateToPage(
                            cubit.currentPageIndex + 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                          cubit.onNextButton();
                        },
                  child: Text(
                    cubit.currentPageIndex == 2 ? 'Get Start' : 'Next',
                    style: AppTextStyle.font18PinkSemiBold
                        .copyWith(fontFamily: FontFamilyHelper.mulishFont),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
