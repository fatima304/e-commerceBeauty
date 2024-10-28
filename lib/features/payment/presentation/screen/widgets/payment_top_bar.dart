import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_style.dart';

class PaymentTopBar extends StatelessWidget {
  const PaymentTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 37.w,
            height: 37.h,
            decoration: BoxDecoration(
              color: AppColor.midGrey,
              shape: BoxShape.circle,
            ),
            child: Icon(
              color: Colors.black,
              Icons.arrow_back_ios_rounded,
            ),
          ),
        ),
        Text(
            'Checkout',
            style: AppTextStyle.font20BlackSemiBold
        ),
        SizedBox(),
      ],
    );
  }
}
