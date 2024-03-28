part of 'todo_bloc.dart';

class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends TodoEvent {
  final Todo todo;

  const AddTodoEvent({required this.todo});
  @override
  List<Object> get props => [todo];
}

class DeleteTodoEvent extends TodoEvent {}

class ShowDialogEvent extends TodoEvent {}
