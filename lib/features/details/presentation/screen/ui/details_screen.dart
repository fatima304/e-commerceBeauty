import 'package:beauty_ecommerce/features/details/presentation/screen/widgets/details_body.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.beautyProductModelResponse});

  final BeautyProductModelResponse beautyProductModelResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DetailsBody(beautyProductModelResponse: beautyProductModelResponse,)
    );
  }
}
