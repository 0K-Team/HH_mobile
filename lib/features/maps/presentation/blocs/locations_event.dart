part of 'locations_bloc.dart';

sealed class LocationsEvent extends Equatable {
  const LocationsEvent();

  @override
  List<Object?> get props => [];
}

final class LocationsFetched extends LocationsEvent {

}