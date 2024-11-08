part of 'discounts_bloc.dart';

sealed class DiscountsState extends Equatable {
  const DiscountsState();

  @override
  List<Object> get props => [];
}

final class DiscountsInitial extends DiscountsState {

}

final class DiscountsLoadSuccess extends DiscountsState {
  final List<DiscountModel> discounts;

  const DiscountsLoadSuccess(this.discounts);

  @override
  List<Object> get props => [discounts];
}

final class DiscountsLoadError extends DiscountsState {
  final Exception exception;

  const DiscountsLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}