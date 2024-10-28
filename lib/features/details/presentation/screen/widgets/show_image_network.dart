import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/app_images.dart';
import '../../../../home/data/model/beauty_product_model_response.dart';

class ShowImageNetwork extends StatelessWidget {
  const ShowImageNetwork(this.beautyProductModelResponse, {super.key});

  final BeautyProductModelResponse beautyProductModelResponse;

  @override
  Widget build(BuildContext context) {
    return  Image.network(
      beautyProductModelResponse.imageLink ?? AppImages.makeupFake,
      width: 100.w,
      height: 100.h,
      errorBuilder: (context, error, stackTrace) {
        // Display a default image in case of an error
        return Image.network(
          AppImages.makeupFake,
          width: 100.w,
          height: 100.h,
        );
      },
    );
  }
}
