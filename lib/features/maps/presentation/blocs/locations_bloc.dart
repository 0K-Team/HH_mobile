import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';
import 'package:eco_hero_mobile/features/maps/data/repositories/location_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'locations_event.dart';
part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final LocationRepositoryImpl _repository;

  LocationsBloc(this._repository) : super(LocationsInitial()) {
    on<LocationsFetched>(_onLocationsFetched);
  }

  FutureOr<void> _onLocationsFetched(
      LocationsFetched event, Emitter<LocationsState> emit) async {
    Either<List<LocationModel>, Exception> either =
        await _repository.fetchLocations();
    either.fold((list) {
      emit(LocationsLoadSuccess(list));
    }, (exception) {
      emit(LocationsLoadError(exception));
    });
  }
}
