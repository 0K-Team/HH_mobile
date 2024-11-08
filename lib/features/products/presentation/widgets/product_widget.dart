import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;

  const ProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 18.h,
      decoration: BoxDecoration(
        color: element,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            imageUrl: product.imageUrl,
            fit: BoxFit.cover,
            height: 10.h,
          ),
          SizedBox(
            height: 6.h,
            child: Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17.sp,
                height: 1,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
