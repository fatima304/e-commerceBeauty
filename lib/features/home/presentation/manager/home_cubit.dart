import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_screen.dart';
import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_body.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:beauty_ecommerce/features/home/data/repo/home_repo.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/home_body.dart';
import 'package:beauty_ecommerce/features/profile/presentation/screen/ui/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial()){
    changeBrandIndex(0);
  }

  static HomeCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  final List<String> brandNames = ['Maybelline', 'Milani', 'Dior','Fenty', 'Clinique' , 'L\'oreal'  , 'Colourpop'];

  /// get product using brand
  int currentIndex = 0;

  void changeBrandIndex (int index){
    currentIndex = index ;
    getProductByBrand(brandNames[currentIndex]);
    emit(HomeChangeBrandIndex());
  }

  List<BeautyProductModelResponse> beautyProduct =[] ;

  void getProductByBrand(String brand) async {
    emit(HomeBeautyProductLoading()); // Emit loading state
    var products = await homeRepo.getProduct(brand);
    products.fold(
      (error) {
        emit(HomeBeautyProductFailed(error: error.apiErrorModel.message ?? ''));
      },
      (beautyProductList) {
        beautyProduct = beautyProductList;
        emit(HomeBeautyProductSuccess(beautyProductList: beautyProductList));
      },
    );
  }

  /// search product using product  type
  TextEditingController searchController = TextEditingController();

  void searchUsingProductType()async{
    emit(HomeBeautyProductLoading()); // Emit loading state
    var products = await homeRepo.searchUsingProductType(
        {
          'brand' : brandNames[currentIndex] ,
          'product_type' : searchController.text
        }
    );
    products.fold(
          (error) {
        emit(HomeBeautyProductFailed(error: error.apiErrorModel.message ?? ''));
      },
          (beautyProductList) {
        emit(HomeBeautyProductSuccess(beautyProductList: beautyProductList));
      },
    );
  }

  /// change between index in bottom navigation bar
List<Widget> screens =[
  HomeBody(),
CartScreen(),
  FavouriteBody(),
  ProfileScreen(),
];


  int screenIndex = 0 ;

  void changScreen(int index){
    screenIndex = index;
    if (index == 0) {
      getProductByBrand(brandNames[currentIndex]);
    }
    emit(HomeChangeScreenIndex());
  }


  /// make item favourite
  bool isFav = false ;
  List<BeautyProductModelResponse> favProduct =[] ;
  void changeFav(BeautyProductModelResponse product){
    isFav = !isFav;
   if(isFav){
     favProduct.add(product);
   }else{
     favProduct.remove(product);
   }
    emit(HomeBeautyProductSuccess(beautyProductList: beautyProduct));

  }

}
