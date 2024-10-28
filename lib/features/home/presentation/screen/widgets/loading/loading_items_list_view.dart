import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/loading/loading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingItemsListView extends StatelessWidget {
  const LoadingItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context , index){
            return Padding(
              padding:  EdgeInsets.only(right: 33.r),
              child: LoadingItem(),
            );
          }
      ),
    );
  }
}
