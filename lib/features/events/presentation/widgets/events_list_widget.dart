import 'package:eco_hero_mobile/features/events/presentation/blocs/events_bloc.dart';
import 'package:eco_hero_mobile/features/events/presentation/widgets/event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsListWidget extends StatelessWidget {
  const EventsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(builder: (context, state) {
      if (state is EventsLoadError) {
        return Text(state.exception.toString());
      }

      if (state is! EventsLoadSuccess) {
        return CircularProgressIndicator();
      }

      return Column(
        children:
            state.events.map((event) => EventWidget(event: event)).toList(),
      );
    });
  }
}
