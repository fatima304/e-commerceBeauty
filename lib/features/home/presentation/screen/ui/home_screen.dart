import 'package:beauty_ecommerce/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: homeCubit.screens[homeCubit.screenIndex],
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: homeCubit.screenIndex,
            onTap: homeCubit.changScreen,
          ),
        );
      },
    );
  }
}
