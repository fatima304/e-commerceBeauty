import 'package:beauty_ecommerce/features/payment/presentation/screen/widgets/payments_body.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentsBody(),
    );
  }
}
