import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test_flutter_app/src/core/bloc/bloc_with_state.dart';

enum BlocProcessState {
  busy,
  idle,
}

abstract class BlocWithState<E, S> extends Bloc<E, S> {
  BlocWithState(S initilState) : super(initilState);

  BlocProcessState _state = BlocProcessState.idle;

  BlocProcessState get blocProcessState => _state;

  Stream<S> runBlocProcess(Stream<S> Function() process) async* {
    if (_state == BlocProcessState.idle) {
      _state = BlocProcessState.busy;
      yield* process();
      _state = BlocProcessState.idle;
    }
  }

  // Stream<S> runBlocProcess(Stream<S> Function() process) async* {
  //   if (_state == BlocProcessState.idle) {
  //     _state = BlocProcessState.busy;
  //     yield* process();
  //     _state = BlocProcessState.idle;
  //   }
  // }
}
