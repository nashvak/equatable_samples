import 'package:equatable_asif_taj/bloc/counter/counter_bloc.dart';
import 'package:equatable_asif_taj/bloc/counter/counter_event.dart';
import 'package:equatable_asif_taj/bloc/counter/counter_state.dart';
import 'package:equatable_asif_taj/bloc/switch/switch_bloc.dart';
import 'package:equatable_asif_taj/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounter());
                    },
                    child: const Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounter());
                    },
                    child: const Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
