import 'package:bloc/bloc.dart';
import 'package:equatable_asif_taj/bloc/counter/counter_event.dart';
import 'package:equatable_asif_taj/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(increment);
    on<DecrementCounter>(decrement);
  }

  void increment(CounterEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrement(CounterEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
