import 'package:equatable_asif_taj/slider_switch/bloc/switch/switch_event.dart';
import 'package:equatable_asif_taj/slider_switch/bloc/switch/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<EnableDisableEvent>(enableDisableEvent);
    on<SliderEvent>(sliderEvent);
  }
  void enableDisableEvent(EnableDisableEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void sliderEvent(SliderEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(slider: event.sliderValue));
  }
}
