import 'package:eco_hero_mobile/features/products/presentation/blocs/products_bloc.dart';
import 'package:eco_hero_mobile/features/products/presentation/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
      if (state is! ProductsLoadSuccess) {
        return CircularProgressIndicator();
      }

      return Wrap(
        spacing: 10.sp,
        runSpacing: 10.sp,
        children: state.products
            .map((product) => ProductWidget(product: product))
            .toList(),
      );
    });
  }
}
