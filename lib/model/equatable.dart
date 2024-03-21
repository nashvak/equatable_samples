import 'package:equatable/equatable.dart';

class Persons extends Equatable {
  final String name;
  final int age;

  const Persons({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
