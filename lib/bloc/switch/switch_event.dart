import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object> get props => [];
}

class EnableDisableEvent extends SwitchEvent {}

//slider is moving according to a value so we should define the variable.
// it accept from the value in the  onchange method in the ui secction
class SliderEvent extends SwitchEvent {
  final double sliderValue;
  const SliderEvent({required this.sliderValue});
  @override
  List<Object> get props => [sliderValue];
}
