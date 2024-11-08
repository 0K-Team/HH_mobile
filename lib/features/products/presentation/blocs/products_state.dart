part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {}

final class ProductsLoadSuccess extends ProductsState {
  final List<ProductModel> products;

  const ProductsLoadSuccess(this.products);

  @override
  List<Object> get props => [products];
}

final class ProductsLoadError extends ProductsState {
  final Exception exception;

  const ProductsLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
