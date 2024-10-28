import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.beautyProductModelResponse});

  final BeautyProductModelResponse beautyProductModelResponse;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            beautyProductModelResponse.name.trim() // Remove leading and trailing spaces
                .replaceAll(RegExp(r'\s+'), ' '),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            softWrap: false,
          style: AppTextStyle.font22BlackBold.copyWith(
            fontFamily: FontFamilyHelper.sourceSerifFont
          )
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              beautyProductModelResponse.brand,
              style: AppTextStyle.font18BlackMedium.copyWith(
                fontFamily: FontFamilyHelper.poppinsFont
              )
            ),
            Text(
              beautyProductModelResponse.productType ?? 'Undefined',
              style: AppTextStyle.font18PinkSemiBold
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Text(
          beautyProductModelResponse.description ?? 'No details',
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            softWrap: false,
          style: AppTextStyle.font14BlackRegular
        ),
      ],
    );
  }
}
