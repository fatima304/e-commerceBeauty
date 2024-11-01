import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';

abstract class HomeState {}

 class HomeInitial extends HomeState {}
 class HomeChangeBrandIndex extends HomeState {}
 class HomeChangeScreenIndex extends HomeState {}
 class HomeBeautyProductLoading extends HomeState {}
 class HomeBeautyProductSuccess extends HomeState {
  final List<BeautyProductModelResponse> beautyProductList ;

  HomeBeautyProductSuccess({required this.beautyProductList});
 }
class HomeBeautyProductFailed extends HomeState {
  final String error ;

  HomeBeautyProductFailed({required this.error});
}
class HomeChangeFavourite extends HomeState {

}
class HomeCartProductSuccess extends HomeState {
  final List<BeautyProductModelResponse> cartProductList ;

  HomeCartProductSuccess({required this.cartProductList});
}

class HomeCartProductFailed extends HomeState {
  final String error ;

  HomeCartProductFailed({required this.error});
}