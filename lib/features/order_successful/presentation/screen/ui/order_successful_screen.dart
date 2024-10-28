import 'package:flutter/material.dart';

import '../widgets/order_successful_body.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderSuccessfulBody(),
    );
  }
}
