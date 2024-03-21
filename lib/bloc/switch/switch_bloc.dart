import 'package:equatable_asif_taj/bloc/switch/switch_event.dart';
import 'package:equatable_asif_taj/bloc/switch/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<EnableDisableEvent>(enableDisableEvent);
  }
  void enableDisableEvent(EnableDisableEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }
}
