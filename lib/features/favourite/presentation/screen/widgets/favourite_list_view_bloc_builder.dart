import 'package:beauty_ecommerce/features/favourite/presentation/screen/widgets/favourite_items_list_view.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteListViewBlocBuilder extends StatelessWidget {
  const FavouriteListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit , HomeState>(
        builder: (context , state){
          return FavouriteItemsListView(beautyList: homeCubit.favoriteProduct.toList());
        }
    );
  }
}
