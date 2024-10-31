import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_list_view_bloc_builder.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_top_bar.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartTopBar(),
            SizedBox(
              height: 20.h,
            ),
            const Expanded(
              child: CartListViewBlocBuilder(),
            ),
            const PriceWidget(text: 'Sub Total', price: '\$ 80.99'),
            const PriceWidget(text: 'Shipping', price: '\$ 10.00'),
            SizedBox(
              height: 5.h,
            ),
            const Divider(),
            SizedBox(
              height: 5.h,
            ),
            const PriceWidget(text: 'Total', price: '\$90.99'),
            SizedBox(
              height: 5.h,
            ),
            Center(
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Routes.paymentScreen);
                  },
                  buttonText: 'Checkout',
                )),
          ],
        ),
      ),
    );
  }
}
