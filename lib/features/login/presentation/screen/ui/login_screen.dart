import 'dart:developer';

import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/features/login/data/repo/login_repo.dart';
import 'package:beauty_ecommerce/features/login/presentation/manager/login_cubit.dart';
import 'package:beauty_ecommerce/features/login/presentation/manager/login_state.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/auth_widget.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/custom_container.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/login_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => LoginCubit(LoginRepository()),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
               Navigator.pushNamed(
                  context, Routes.homeScreen); 
            } else if (state is LoginError) {
              // Show error message
              log(state.message);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            return AuthWidget(
              authBody: CustomContainer(
                onPressed: () {
                   context.read<LoginCubit>().signIn(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                },
                welText: 'Welcome Back!',
                buttonText: state is LoginLoading ? 'Loading...' : 'LOGIN',
                accountText: 'Login to your account',
                createAccount: 'Don\'t have an account? Sign up',
                authField: LoginTextfield(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
