import 'package:beauty_ecommerce/core/network/api_services.dart';
import 'package:beauty_ecommerce/core/network/dio_factory.dart';
import 'package:beauty_ecommerce/features/home/data/repo/home_repo.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

Future<void> initAppModule()async {

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiMakeupServices>(() => ApiMakeupServices(dio));

  // home instants
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));


}
