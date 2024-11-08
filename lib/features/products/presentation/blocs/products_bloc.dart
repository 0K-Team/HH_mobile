import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:eco_hero_mobile/features/products/data/repositories/products_repository_impl.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';

part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepositoryImpl _repository;

  ProductsBloc(this._repository) : super(ProductsInitial()) {
    on<ProductsFetched>(_onProductsFetched);
  }

  Future<void> _onProductsFetched(
      ProductsFetched event, Emitter<ProductsState> emit) async {
    (await _repository.fetchProducts(1)).fold((products) {
      emit(ProductsLoadSuccess(products));
    }, (exception) {
      emit(ProductsLoadError(exception));
    });
  }
}
