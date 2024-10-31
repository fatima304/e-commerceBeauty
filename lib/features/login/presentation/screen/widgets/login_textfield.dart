import 'package:beauty_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginTextfield({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'Email',   
          prefixIcon: Icons.email,
          controller: emailController,
        ),
        CustomTextFormField(
          hintText: 'Password',
          prefixIcon: Icons.lock,
          obscureText: true,
          controller: passwordController,
        ),
      ],
    );
  }
}
