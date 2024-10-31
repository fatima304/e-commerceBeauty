import 'dart:developer';

import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/auth_widget.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/widgets/custom_container.dart';
import 'package:beauty_ecommerce/features/register/data/repo/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_cubit.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_state.dart';

import 'package:beauty_ecommerce/features/register/presentation/screen/widgets/register_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => SignupCubit(AuthRepository()),
      child: Scaffold(
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignupSuccess) {
              Navigator.pushNamed(context, Routes.homeScreen);
            } else if (state is SignupError) {
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
                  context.read<SignupCubit>().signUp(
                        emailController.text,
                        passwordController.text,
                      );
                },
                welText: 'Register',
                buttonText: state is SignupLoading ? 'Loading...' : 'Sign Up',
                accountText: 'Create an account',
                createAccount: 'Already have an account? Login',
                authField: RegisterTextfield(
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
