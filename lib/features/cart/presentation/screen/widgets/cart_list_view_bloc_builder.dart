import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_listview.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_style.dart';
import '../../../../home/presentation/manager/home_cubit.dart';

class CartListViewBlocBuilder extends StatelessWidget {
  const CartListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state)
    {
      if(state is HomeBeautyProductLoading){
        return Center(child: CircularProgressIndicator(),);
      }else if(state is HomeCartProductSuccess){
        return getCartList(state.cartProductList);
      }else if(state is HomeCartProductFailed){
        return getError(state.error);
      }else {
        return SizedBox.shrink();
      }
    }
    );
  }

  Widget getCartList(productModelResponse){
    return CartListview(productModelResponse: productModelResponse);
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
