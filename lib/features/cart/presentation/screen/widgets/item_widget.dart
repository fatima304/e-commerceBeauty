
import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/quantity_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            width: 150.w,
            height: 150.h,
            fit: BoxFit.cover,
            AppImages.makeupFake,
          ),
        ),
        Spacer(),
        Column(
          children: [
             Text(
              'Aloe Tiki',
              style: AppTextStyle.font20BlackSemiBold
            ),
             SizedBox(
              height: 15.h,
            ),
             Text(
              "\$40.99",
              style: AppTextStyle.font18PinkSemiBold
            ),
             SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                QuantityCard(
                  icon: Icons.remove,
                  onPressed: () {},
                ),
                 Text(
                  '1',
                  style: AppTextStyle.font16PinkMedium
                ),
                QuantityCard(
                  icon: Icons.add,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
