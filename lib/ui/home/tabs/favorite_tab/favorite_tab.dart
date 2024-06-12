import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/my_assets.dart';
import '../../../utils/my_colors.dart';
import '../home_tab/widgets/custom_search_with_shopping_cart.dart';

class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              MyAssets.logo,
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 18.h,
            ),
            const CustomSearchWithShoppingCart(),
            SizedBox(
              height: 24.h,
            ),
          ]),
    ));
  }
}
