
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_item.dart';

class CartListview extends StatelessWidget {
  const CartListview({super.key, required this.productModelResponse});

 final  List<BeautyProductModelResponse> productModelResponse ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(
            bottom: 30.h
          ),
          child:  CartItem(productModelResponse: productModelResponse[index],),
        );
      },
      itemCount: productModelResponse.length,
    );
  }
}
