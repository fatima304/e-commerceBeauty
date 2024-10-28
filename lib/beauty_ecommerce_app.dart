import 'package:beauty_ecommerce/core/routes/app_routing.dart';
import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeautyEcommerceApp extends StatelessWidget {
  const BeautyEcommerceApp({super.key, required this.appRouting});

  final AppRouting appRouting ;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
        child:  MaterialApp(
          debugShowCheckedModeBanner: false ,
          onGenerateRoute: appRouting.generateRoute,
          initialRoute: Routes.homeScreen,
        ),
    );
  }
}
