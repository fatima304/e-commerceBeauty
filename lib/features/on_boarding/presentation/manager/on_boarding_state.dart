
import '../../data/model/on_boarding_model.dart';

class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}
final class OnBoardingOnChange extends OnBoardingState {
  final List<OnBoardingModel> onBoardingModel;

  OnBoardingOnChange({required this.onBoardingModel});
}