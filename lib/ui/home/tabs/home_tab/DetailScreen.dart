import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/entities/CategoryOrBrandResponseEntity.dart';
import '../../../../domain/entities/ProductResponseEntity.dart';
import '../../../utils/my_assets.dart';
import '../../../utils/my_colors.dart';
import '../../cart/cart_screen.dart';
import '../../product_details/product_details_view.dart';
import '../product_list_tab/widgets/grid_view_card_item.dart';
import '../home_tab/widgets/custom_text_field.dart';

class DetailScreen extends StatelessWidget {
  final CategoryOrBrandEntity categoryOrBrandEntity;

  const DetailScreen({required this.categoryOrBrandEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryOrBrandEntity.name ?? 'No Name'), // Handle null case
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Image.asset(
                MyAssets.logo,
                alignment: Alignment.topLeft,
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(),
                  ),
                  SizedBox(width: 24.w),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(CartScreen.routeName);
                    },
                    child: ImageIcon(
                      AssetImage(MyAssets.shoppingCart),
                      size: 28.sp,
                      color: AppColors.primaryColor,
                    ),

                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: GridView.builder(
                  itemCount: 10, // Just a placeholder for demonstration
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.4,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                  ),
                  itemBuilder: (context, index) {
                    // Pass your product entity to the GridViewCardItem widget
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ProductDetailsView.routeName,
                          // Pass your arguments here if needed
                        );
                      },
                      child: GridViewCardItem(
                        // Pass your product entity here
                        productEntity: ProductEntity(), // Replace ProductEntity with your actual product entity
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
