import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeCircle extends StatelessWidget {
  const ThreeCircle({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return  Row(
      children: List.generate(3, (index) =>
      Padding(
        padding:  EdgeInsets.only(right: 10.r),
        child: Container(
          width: cubit.currentPageIndex ==  index ? 20.w : 10.h,
          height: cubit.currentPageIndex ==  index ? 20.w : 10.h,
          decoration: BoxDecoration(
            color: cubit.currentPageIndex ==  index ? AppColor.mainPink :AppColor.darkGrey,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      )),
    );
  }
}
