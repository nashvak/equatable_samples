import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<Todo> todoList = [];
  TodoBloc() : super(const TodoState()) {
    on<AddTodoEvent>(addTodo);
    on<DeleteTodoEvent>(deleteTodo);
    on<ShowDialogEvent>(showDialogFunction);
  }

  FutureOr<void> addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    todoList.add(event.todo);
    emit(state.copyWith(todos: List.from(todoList)));
  }

  FutureOr<void> deleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {}

  FutureOr<void> showDialogFunction(
      ShowDialogEvent event, Emitter<TodoState> emit) {}
}
