import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  int currentPageIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  static OnBoardingCubit get(context) => BlocProvider.of(context);
  List<OnBoardingModel> onBoardingScreen = [];

  void loadOnBoardingScreen(){
    onBoardingScreen =[
      OnBoardingModel(
          imagePath: AppImages.onBoardingFirst,
          title: 'Your Beauty',
          subtitle: 'Choose what suits your beauty and makes you shine'),
      OnBoardingModel(
          imagePath: AppImages.onBoardingSecond,
          title: 'Pretty in Pink, Gorgeous in Glitter',
          subtitle: 'Always beautiful in the details of your wonderful makeup'),
      OnBoardingModel(
          imagePath: AppImages.onBoardingThird,
          title: 'Cute and Confident, Darling!',
          subtitle: 'Create your beauty magic with magical touches'),
    ];
    emit(OnBoardingOnChange(onBoardingModel: onBoardingScreen));
  }

  onPageChanged(value) {
    currentPageIndex = value;
    emit(OnBoardingOnChange(onBoardingModel: onBoardingScreen));
  }

  onNextButton() {
    if (currentPageIndex < 2) {
      currentPageIndex++;
    }
    emit(OnBoardingOnChange(onBoardingModel: onBoardingScreen));
  }
}
