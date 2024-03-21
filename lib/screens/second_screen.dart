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
              Text("Notification"),
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            color: Colors.red.withOpacity(0.2),
          ),
          SizedBox(
            height: 10,
          ),
          Slider(value: 0.4, onChanged: (value) {})
        ],
      ),
    );
  }
}
