//we cannot use this override method because its simple if we have complex datas this not an appropriate way
//so we use equatable package
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Person &&
            runtimeType == other.runtimeType &&
            name == other.name &&
            age == other.age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
