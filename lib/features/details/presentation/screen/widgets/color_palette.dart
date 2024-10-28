import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helper/extensions.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({super.key, required this.beautyProductModelResponse});

  final BeautyProductModelResponse beautyProductModelResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child:
          beautyProductModelResponse.productColors == null ||
              beautyProductModelResponse.productColors!.isEmpty
              ? Text(
            'No colors available',
            style: AppTextStyle.font18BlackMedium,
          )
              :
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: beautyProductModelResponse.productColors?.length,
            itemBuilder: (context, index) {
              return  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: HexColor.fromHex(
                            beautyProductModelResponse
                                    .productColors![index]!.hexValue ??
                                '#FFFFFF'),
                        radius: 20,
                      ),
                    );
            },
          ),
        ),
      ],
    );
  }
}
