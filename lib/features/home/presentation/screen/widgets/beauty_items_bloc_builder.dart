import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_state.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/beauty_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loading/loading_items_list_view.dart';

class BeautyItemsBlocBuilder extends StatelessWidget {
  const BeautyItemsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is HomeBeautyProductLoading) {
        return LoadingItemsListView();
      } else if (state is HomeBeautyProductSuccess) {
        return getSuccess(state.beautyProductList);
      } else if (state is HomeBeautyProductFailed) {
        return getError(state.error);
      } else {
        return LoadingItemsListView();
      }
    });
  }

  Widget getSuccess(beautyProductList) {
    return BeautyItemsListView(
      beautyProductList: beautyProductList,
    );
  }

  Widget getError(String error) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.red),
        child: Text(
          error,
          style: AppTextStyle.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
