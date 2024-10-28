import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/features/payment/presentation/screen/widgets/payment_top_bar.dart';
import 'package:beauty_ecommerce/features/payment/presentation/screen/widgets/shared_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';

class PaymentsBody extends StatelessWidget {
  const PaymentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentTopBar(),
             SizedBox(
              height: 30.h,
            ),
             Text(
              'Delivery Address',
              style: AppTextStyle.font22BlackBold
            ),
             SizedBox(
              height: 20.h,
            ),
            const Column(
              children: [
                SharedListTile(
                  leading: Icons.apple_outlined,
                  title: 'Apple Pay',
                  subTitle: '**** **** 0465 7538',
                  trialing: Icons.check_box_outlined,
                ),
                SharedListTile(
                  leading: Icons.payment,
                  title: 'Master Card',
                  subTitle: '**** **** 0345 89678',
                  trialing: Icons.check_box_outline_blank_rounded,
                ),
                SharedListTile(
                  leading: Icons.paypal,
                  title: 'Paypal',
                  subTitle: '**** **** 0388 8321',
                  trialing: Icons.check_box_outline_blank_rounded,
                ),
                SharedListTile(
                  leading: Icons.money,
                  title: 'Cash on delivery',
                  subTitle: '90.99',
                  trialing: Icons.check_box_outline_blank_rounded,
                ),
              ],
            ),
            Spacer(),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                  children: [
                    Text(
                      'Total',
                      style: AppTextStyle.font24PinkBold
                    ),
                    Text(
                      '\$90.99',
                      style: AppTextStyle.font18BlackMedium
                    ),
                  ],
                             ),
                             CustomElevatedButton(onPressed: () {
                               Navigator.of(context).pushReplacementNamed(Routes.orderSuccessfulScreen);
                             }, buttonText: 'Place Order',),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
