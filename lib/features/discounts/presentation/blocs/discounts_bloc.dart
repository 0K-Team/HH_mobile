import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/discounts/data/models/discount_model.dart';
import 'package:eco_hero_mobile/features/discounts/data/repositories/discounts_repository_impl.dart';
import 'package:equatable/equatable.dart';

part 'discounts_event.dart';

part 'discounts_state.dart';

class DiscountsBloc extends Bloc<DiscountsEvent, DiscountsState> {
  final DiscountsRepositoryImpl _repository;

  DiscountsBloc(this._repository) : super(DiscountsInitial()) {
    on<DiscountsFetched>(_onDiscountsFetched);
  }

  Future<void> _onDiscountsFetched(
      DiscountsFetched event, Emitter<DiscountsState> emit) async {
    (await _repository.fetchDiscounts()).fold((products) {
      emit(DiscountsLoadSuccess(products));
    }, (exception) {
      emit(DiscountsLoadError(exception));
    });
  }
}
