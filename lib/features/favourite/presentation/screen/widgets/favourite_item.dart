import 'package:beauty_ecommerce/core/widgets/custom_image_network.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: CustomImageNetwork(imagePath: beautyProductModelResponse.imageLink),
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
