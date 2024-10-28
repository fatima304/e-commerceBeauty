import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/app_images.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/theme/font_family_helper.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key, required this.beautyProductModelResponse});

  final BeautyProductModelResponse beautyProductModelResponse;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            beautyProductModelResponse.imageLink ??
            AppImages.makeupFake,
            width: 120.w,
            height: 120.h,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Display a default image in case of an error
              return Image.network(
                AppImages.makeupFake,
                width: 120.w,
                height: 120.h,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  beautyProductModelResponse.name
                      .trim() // Remove leading and trailing spaces
                      .replaceAll(RegExp(r'\s+'), ' '),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: false,
                  style: AppTextStyle.font18BlackSemiBold
                      .copyWith(fontFamily: FontFamilyHelper.sourceSerifFont)),
              SizedBox(
                height: 8.h,
              ),
              Text(
                   beautyProductModelResponse.productType ??'Undefined',
                  style: AppTextStyle.font18PinkSemiBold
              ),
            ],
          ),
        ),
      ],
    );
  }
}
