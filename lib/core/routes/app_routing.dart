import 'package:beauty_ecommerce/core/di/dependency_injection.dart';
import 'package:beauty_ecommerce/features/cart/presentation/screen/widgets/cart_screen.dart';
import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_body.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/ui/home_screen.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/home_body.dart';
import 'package:beauty_ecommerce/features/login/presentation/screen/ui/login_screen.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:beauty_ecommerce/features/details/presentation/screen/ui/details_screen.dart';
import 'package:beauty_ecommerce/features/order_successful/presentation/screen/ui/order_successful_screen.dart';
import 'package:beauty_ecommerce/features/payment/presentation/screen/ui/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';
import '../../features/splash/presentation/screen/ui/splash_screen.dart';
import 'routes.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingCubit()..loadOnBoardingScreen(),
            child: OnBoardingScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.orderSuccessfulScreen:
        return MaterialPageRoute(
          builder: (_) => OrderSuccessfulScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: HomeScreen(),
          ),
        );
      case Routes.homeBody:
        return MaterialPageRoute(
          builder: (_) => HomeBody(),
        );
        case Routes.cartBody:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
        case Routes.favouriteBody:
        return MaterialPageRoute(
          builder: (_) => FavouriteBody(),
        );
      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: DetailsScreen(beautyProductModelResponse: arguments as BeautyProductModelResponse,),
          ),
        );
      case Routes.paymentScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
  }
}
