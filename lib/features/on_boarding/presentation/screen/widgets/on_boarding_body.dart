import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_state.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/screen/widgets/on_boarding_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit= OnBoardingCubit.get(context);
        if(state is OnBoardingOnChange){
          return PageView.builder(
              controller: cubit.pageController,
              onPageChanged: (index){
                cubit.onPageChanged(index);
              },
              itemBuilder: (context, index) {
                return OnBoardingDetails(onBoardingModel: state.onBoardingModel[index],);
              });
        }else{
          return SizedBox.shrink();
        }
      },
    );
  }
}
