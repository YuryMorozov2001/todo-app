// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

abstract class TodoEvent {}

class CreateTodoEvent extends TodoEvent {
  final Todo todo;
  CreateTodoEvent({
    required this.todo,
  });
}

class ReadTodoEvent extends TodoEvent {
  final List<Todo>? todos;
  ReadTodoEvent({
    this.todos,
  });
}

class DeleteTodoEvent extends TodoEvent {
  final int id;
  DeleteTodoEvent({
    required this.id,
  });
}

class UpdateTodoEvent extends TodoEvent {
  final int id;
  UpdateTodoEvent({
    required this.id,
  });
}

class GetStreamEvent extends TodoEvent {}
