import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/auth_widget.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/custom_container.dart';
import 'package:beauty_ecommerce/features/register/presentation/screen/widgets/register_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthWidget(
        authBody: CustomContainer(
          onPressed: () {
            
          },
          welText: 'Register',
          buttonText: 'Sign Up',
          accountText: 'Create an account',
          createAccount: 'Already have an account? Login', authField:  RegisterTextfield(),
        ),
      ),
    );
  }
}
