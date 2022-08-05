import 'dart:async';

import 'package:client/utils/grpc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/todo_barrel.dart';
import '../../../service/todo_service.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  late TodoService _todoService;
  late StreamSubscription _streamSubscription;
  final GrpcClient grpcClient;
  TodoBloc({required this.grpcClient}) : super(TodoState()) {
    _todoService = TodoService(
        clientChannel: GrpcClient().clientChannel,
        streamController: StreamController<Dynamic>());
    _streamSubscription = _todoService.streamTodo().listen((value) {
      add(ReadTodoEvent(todos: value.todos));
    });
    on<ReadTodoEvent>((event, emit) async {
      if (event.todos == null) {
        emit(state.copyWith(todos: await _todoService.readTodo()));
      } else {
        emit(state.copyWith(todos: event.todos));
      }
    });

    on<CreateTodoEvent>((event, emit) async {
      Todo todo = event.todo;
      _todoService.createTodo(
          id: todo.id, title: todo.title, completed: todo.completed);
    });

    on<UpdateTodoEvent>((event, emit) async {
      _todoService.updateTodo(id: event.id);
    });

    on<DeleteTodoEvent>((event, emit) async {
      _todoService.deleteTodo(id: event.id);
    });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
