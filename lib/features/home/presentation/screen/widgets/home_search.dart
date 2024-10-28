import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return CustomTextFormField(
      controller: homeCubit.searchController,
        onChanged: (value){
        homeCubit.searchUsingProductType();
        },
        hintText: 'Search',
      prefixIcon: Icons.search,
      height: 0.sp,
      hintStyle: AppTextStyle.font14PinkSemiBold,
    );
  }
}
