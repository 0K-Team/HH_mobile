part of 'locations_bloc.dart';

sealed class LocationsState extends Equatable {
  const LocationsState();

  @override
  List<Object> get props => [];
}

final class LocationsInitial extends LocationsState {

}

final class LocationsLoadSuccess extends LocationsState {
  final List<LocationModel> locations;

  const LocationsLoadSuccess(this.locations);

  @override
  List<Object> get props => [locations];
}

final class LocationsLoadError extends LocationsState {
  final Exception exception;

  const LocationsLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
