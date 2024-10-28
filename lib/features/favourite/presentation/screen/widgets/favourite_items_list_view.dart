import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_item.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteItemsListView extends StatelessWidget {
  const FavouriteItemsListView({super.key, required this.beautyList});

  final List<BeautyProductModelResponse> beautyList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: beautyList.length,
          itemBuilder:(context , index){
            return Padding(
              padding:  EdgeInsets.only(
                bottom: 20.h
              ),
              child: FavouriteItem(beautyProductModelResponse: beautyList[index],),
            );
          }
      ),
    );
  }
}
