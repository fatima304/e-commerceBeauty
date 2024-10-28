import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/routes/routes.dart';
import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/features/home/data/model/beauty_product_model_response.dart';
import 'package:beauty_ecommerce/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBeautyItem extends StatelessWidget {
  const ContainerBeautyItem({super.key, required this.beautyProductModel});

  final BeautyProductModelResponse beautyProductModel;

  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    bool isFav = homeCubit.favProduct.contains(beautyProductModel);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        width: 241.w,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                beautyProductModel.imageLink ?? AppImages.makeupFake,
                width: 150.w,
                height: 120.h,
                errorBuilder: (context, error, stackTrace) {
                  // Display a default image in case of an error
                  return Image.network(
                    AppImages.makeupFake,
                    width: 150.w,
                    height: 120.h,
                  );
                },
              ),
            ),
            Spacer(),
            Text(
              beautyProductModel.name
                  .trim() // Remove leading and trailing spaces
                  .replaceAll(RegExp(r'\s+'), ' '),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: false,
              style: AppTextStyle.font22BlackSemiBold.copyWith(
                fontFamily: FontFamilyHelper.leagueSpartanFont,
              ),
            ),
            Text(
              '\$ ${beautyProductModel.price ?? 10.00}',
              style: AppTextStyle.font20DarkGreyMedium.copyWith(
                fontFamily: FontFamilyHelper.leagueSpartanFont,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.detailsScreen,
                        arguments: beautyProductModel);
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.mainPink,
                    ),
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: AppTextStyle.font16WhiteSemiBold.copyWith(
                            fontFamily: FontFamilyHelper.leagueSpartanFont),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    homeCubit.changeFav(beautyProductModel);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColor.cherryBlossomPink,
                    child: Icon(
                       isFav ? Icons.favorite : Icons.favorite_border,
                      size: 30,
                      color: isFav ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
