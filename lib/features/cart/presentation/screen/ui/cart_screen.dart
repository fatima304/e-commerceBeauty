import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartBody(),
    );
  }
}
