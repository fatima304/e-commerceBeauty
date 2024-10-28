import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/core/theme/font_weight_helper.dart';
import 'package:beauty_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.welText,
    required this.onPressed,
    required this.buttonText,
    required this.accountText,
    required this.createAccount,
    required this.authField,
  });

  final String welText;
  final Widget authField;
  final String buttonText;
  final String accountText;
  final String createAccount;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              welText,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.sourceSerifFont,
              ),
            ),
            Text(
              accountText,
              style: TextStyle(
                fontSize: 26,
                color: AppColor.darkGrey,
                fontWeight: FontWeightHelper.regular,
                fontFamily: FontFamilyHelper.dongleFont,
              ),
            ),
          ],
        ),
        authField,
        Column(
          children: [
            CustomElevatedButton(
              onPressed: onPressed,
              buttonText: buttonText,
            ),
            Text(
              createAccount,
              style: TextStyle(
                fontSize: 24,
                color: AppColor.darkGrey,
                fontWeight: FontWeightHelper.regular,
                fontFamily: FontFamilyHelper.dongleFont,
              ),
            ),
          ],
        )
      ],
    );
  }
}
