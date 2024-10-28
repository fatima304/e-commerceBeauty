import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/auth_widget.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/custom_container.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/login_textfield.dart';
import 'package:beauty_ecommerce/features/register/presentation/screen/ui/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthWidget(
        authBody: CustomContainer(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
            );
          },
          welText: 'Welcome Back!',
          buttonText: 'LOGIN',
          accountText: 'Login to your account',
          createAccount: 'Don\'t have an account? Sign up',
          authField: LoginTextfield(),
        ),
      ),
    );
  }
}
