import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/my_assets.dart';
import '../../../../utils/my_colors.dart';
import 'custom_text_field.dart';

class CustomSearchWithShoppingCart extends StatelessWidget {
  const CustomSearchWithShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(),
        ),
        SizedBox(
          width: 24.w,
        ),
        InkWell(
          onTap: () {},
          child: ImageIcon(
            AssetImage(MyAssets.shoppingCart),
            size: 28.sp,
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
