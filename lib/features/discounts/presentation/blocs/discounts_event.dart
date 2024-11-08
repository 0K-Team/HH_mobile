part of 'discounts_bloc.dart';

sealed class DiscountsEvent extends Equatable {
  const DiscountsEvent();

  @override
  List<Object?> get props => [];
}

final class DiscountsFetched extends DiscountsEvent {

}
