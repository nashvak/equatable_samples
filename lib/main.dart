import 'package:equatable_asif_taj/counter/bloc/counter/counter_bloc.dart';
import 'package:equatable_asif_taj/image_picker/bloc/bloc/image_picker_bloc.dart';
import 'package:equatable_asif_taj/image_picker/utils/image_service.dart';
import 'package:equatable_asif_taj/slider_switch/bloc/switch/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/page/first_screen.dart';
import 'todo/sections/bloc/todo_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // M E T H O D   1 for multi bloc provider
    // return BlocProvider(
    //   create: (_) => CounterBloc(),
    //   child: BlocProvider(
    //     create: (_) => SwitchBloc(),

    //  M E T H O D   2
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(
            ImageService(),
          ),
        ),
        BlocProvider(
          create: (context) => TodoBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
