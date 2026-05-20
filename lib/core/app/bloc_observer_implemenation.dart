import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverImplemenation implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log(' chang state a bloc $bloc');
  }

  @override
  void onClose(BlocBase bloc) {
    log(' close a bloc $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log(' create a bloc $bloc');
  }

  @override
  void onDone(
    Bloc bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    log(' onDaone a bloc $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(' onError a bloc $bloc');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log(' onEvenet  a bloc $bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log(' onTranstion a bloc $bloc');
  }
}
