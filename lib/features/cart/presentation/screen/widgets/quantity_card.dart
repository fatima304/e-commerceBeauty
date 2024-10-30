import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class QuantityCard extends StatelessWidget {
  const QuantityCard({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        color: Colors.black,
        iconSize: 18,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
