import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_list_view_bloc_builder.dart';
import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Column(
        children: [
          FavouriteTopBar(),
          SizedBox(
            height: 25.h,
          ),
          FavouriteListViewBlocBuilder(),
        ],
      ),
    ));
  }
}
