import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_state.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/brand_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandItemsListView extends StatelessWidget {
  const BrandItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 25.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeCubit.brandNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.r),
                  child: BrandItem(
                    brandName: homeCubit.brandNames[index],
                    onTap: () {
                      homeCubit.changeBrandIndex(index);
                    },
                    colorContainer: homeCubit.currentIndex == index
                        ? AppColor.mainPink
                        : AppColor.cherryBlossomPink,
                    shadowColor: homeCubit.currentIndex == index
                        ? Colors.grey
                        : Colors.white,
                    textStyle: homeCubit.currentIndex != index
                        ? AppTextStyle.font14PinkSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont)
                        : AppTextStyle.font14WhiteSemiBold.copyWith(
                        fontFamily: FontFamilyHelper.leagueSpartanFont),
                  ),
                );
              }),
        );
      },
    );
  }
}
