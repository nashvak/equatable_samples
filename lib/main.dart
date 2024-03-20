import 'package:equatable_asif_taj/override_method.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person1 = Person(name: "Nashva", age: 26);
          Person person2 = Person(name: "Nashva", age: 26);
          //the output will be false if you dont override the == operator
          //in dart it only compare the object name not the values in the 2 objects
          print(person1 == person2);
          print(person1.hashCode.toString());
          print(person2.hashCode.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
