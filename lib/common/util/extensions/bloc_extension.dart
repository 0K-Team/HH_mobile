import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExtension<E, S> on Bloc<E, S> {
  Future<T?> addAndWait<T extends S>(
    E event, {
    Duration timeout = const Duration(minutes: 1),
  }) async {
    final completer = Completer<T?>();
    late StreamSubscription<S> subscription;

    subscription = stream.listen((state) {
      if (state is T) {
        completer.complete(state);
        subscription.cancel();
      }
    });

    add(event);

    Future.delayed(timeout, () {
      if (!completer.isCompleted) {
        subscription.cancel();
        completer.complete(null);
      }
    });

    return await completer.future;
  }
}
