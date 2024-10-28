import 'package:beauty_ecommerce/beauty_ecommerce_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routes/app_routing.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  await ScreenUtil.ensureScreenSize();
  runApp( BeautyEcommerceApp(appRouting: AppRouting()));
}


