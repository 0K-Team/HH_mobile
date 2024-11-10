import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductPage extends StatelessWidget {
  final ProductModel product;

  const ProductPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: product.name),
              SizedBox(height: 2.5.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: product.imageUrl,
                  fit: BoxFit.cover,
                  width: 92.w,
                  height: 25.h,
                ),
              ),
              SizedBox(height: 1.5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: element,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.75.h, horizontal: 2.w),
                              child: Text(
                                product.category,
                                style: TextStyle(
                                  color: accent,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              product.brand,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          product.durability,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: accent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    if (product.ecoFriendly)
                      Text('Eco friendly (${product.ecoCertification})'),
                    SizedBox(height: 0.5.h),
                    Row(
                      children: [
                        Icon(
                          Icons.recycling,
                          color: accent,
                          size: 20.sp,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          product.recyclingInfo,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.5.h),
                    Row(
                      children: [
                        Icon(
                          Icons.eco,
                          color: accent,
                          size: 20.sp,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          'Ślad węglowy: ${product.carbonFootprint.co2Emission} ${product.carbonFootprint.unit}',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.5.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${product.price.toStringAsFixed(2)} ${product.currency}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                          color: accent,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Center(
                      child: SecondaryButtonWidget(
                        title: 'Przejdź',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
