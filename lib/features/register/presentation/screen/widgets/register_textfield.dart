import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterTextfield extends StatelessWidget {
  const RegisterTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'Full Name',
          prefixIcon: Icons.person,
        ),
        CustomTextFormField(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        CustomTextFormField(
          hintText: 'Password',
          prefixIcon: Icons.lock,
        ),
        CustomTextFormField(
          hintText: 'Confirm Password',
          prefixIcon: Icons.lock,
        ),
      ],
    );
  }
}
