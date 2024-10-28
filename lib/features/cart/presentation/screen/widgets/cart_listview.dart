
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_widget.dart';

class CartListview extends StatelessWidget {
  const CartListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(
            bottom: 30.h
          ),
          child: const ItemWidget(),
        );
      },
      itemCount: 2,
    );
  }
}
