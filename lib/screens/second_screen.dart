import 'package:equatable_asif_taj/bloc/switch/switch_bloc.dart';
import 'package:equatable_asif_taj/bloc/switch/switch_event.dart';
import 'package:equatable_asif_taj/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Notification"),
              BlocBuilder<SwitchBloc, SwitchState>(
                builder: (context, state) {
                  return Switch(
                      value: state.isSwitch,
                      onChanged: (value) {
                        context.read<SwitchBloc>().add(EnableDisableEvent());
                      });
                },
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          //// a slider with container, the opacity color of the container changes according to the value of the slider.
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Container(
                height: 200,
                color: Colors.red.withOpacity(state.slider),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    context
                        .read<SwitchBloc>()
                        .add(SliderEvent(sliderValue: value));
                  });
            },
          )
        ],
      ),
    );
  }
}
