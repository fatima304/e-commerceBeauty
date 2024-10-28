import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/color_palette.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/product_details.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes.dart';


class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key, required this.beautyProductModelResponse,
  });

  final BeautyProductModelResponse beautyProductModelResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColor.cherryBlossomPink,
        borderRadius: BorderRadius.circular(36),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetails(beautyProductModelResponse: beautyProductModelResponse,),
            SizedBox(height: 25.h),
            ColorPalette(beautyProductModelResponse: beautyProductModelResponse,),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: AppTextStyle.font16DarkGreySemiBold
                    ),
                    Text(
                      "\$ ${beautyProductModelResponse.price}",
                      style: AppTextStyle.font22BlackSemiBold
                    ),
                  ],
                ),
                CustomElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed(Routes.cartBody);
                    },
                    width: 0.w,
                    height: 0.h,
                    buttonText: 'Add To Cart'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
