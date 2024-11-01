import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/widgets/custom_image_network.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/quantity_card.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.productModelResponse,
  });

  final BeautyProductModelResponse productModelResponse;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CustomImageNetwork(
              imagePath: widget.productModelResponse.imageLink),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                widget.productModelResponse.name,
                style: AppTextStyle.font18BlackMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("\$ ${widget.productModelResponse.price}",
                  style: AppTextStyle.font18PinkSemiBold),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  QuantityCard(
                    icon: Icons.remove,
                    onPressed: () {
                      setState(() {
                        quantity <= 0 ? 0 : quantity--;
                      });
                    },
                  ),
                  Text(
                    '$quantity',
                    style: AppTextStyle.font16PinkMedium,
                  ),
                  QuantityCard(
                    icon: Icons.add,
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
