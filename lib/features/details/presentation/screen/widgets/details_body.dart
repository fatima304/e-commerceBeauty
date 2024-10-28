import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/show_image_network.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/top_bar_details.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'details_card.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.beautyProductModelResponse});

  final BeautyProductModelResponse beautyProductModelResponse;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 20.w, vertical: 12.h ,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Details',
                style: AppTextStyle.font20BlackSemiBold
              ),
              TopBarDetails(),
              ShowImageNetwork(beautyProductModelResponse),
              DetailsCard(beautyProductModelResponse: beautyProductModelResponse,),
            ],
          ),
        ),
      ),
    );
  }
}
