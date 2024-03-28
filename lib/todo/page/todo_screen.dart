import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sections/bloc/todo_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todos")),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            return Center(
              child: Text("No todo found"),
            );
          } else if (state.todos.isEmpty) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index].name.toString()),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete)),
                );
              },
              itemCount: state.todos.length,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
