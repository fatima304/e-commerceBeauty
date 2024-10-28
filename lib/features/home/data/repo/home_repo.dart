
import 'package:dartz/dartz.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_services.dart';
import '../model/beauty_product_model_response.dart';

class HomeRepo{

  final ApiMakeupServices _apiMakeupServices;

  HomeRepo(this._apiMakeupServices);

  Future<Either<ErrorHandler , List<BeautyProductModelResponse>>> getProduct (String brand)async{
    try{
      List<BeautyProductModelResponse> beautyProducts = await _apiMakeupServices.getProduct(brand);
      return Right(beautyProducts);
    }catch(error){
      return Left(ErrorHandler.handle(error));
    }
  }

  Future<Either<ErrorHandler , List<BeautyProductModelResponse>>> searchUsingProductType (Map<String , dynamic> queries)async{
    try{
      List<BeautyProductModelResponse> beautyProducts = await _apiMakeupServices.searchUsingProductType(queries);
      return Right(beautyProducts);
    }catch(error){
      return Left(ErrorHandler.handle(error));
    }
  }

}