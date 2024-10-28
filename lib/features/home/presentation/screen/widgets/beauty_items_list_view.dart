import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/container_beauty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/beauty_product_model_response.dart';

class BeautyItemsListView extends StatelessWidget {
  const BeautyItemsListView({super.key, required this.beautyProductList});

  final List<BeautyProductModelResponse> beautyProductList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: beautyProductList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 33.r),
              child: ContainerBeautyItem(beautyProductModel: beautyProductList[index],),
            );
          }),
    );
  }
}
