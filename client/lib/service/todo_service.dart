import 'dart:async'; 

import 'package:grpc/grpc.dart';
import '../generated/todo_barrel.dart';

class TodoService {
  ClientChannel clientChannel;
  StreamController<Dynamic> streamController;
  TodoService({
    required this.clientChannel,
    required this.streamController,
  });

  ResponseStream<ListTodo> streamTodo() {
    final stub = TodoServiceClient(clientChannel);
    ResponseStream<ListTodo> responseStream =
        stub.streamTodo(streamController.stream);
    return responseStream;
  }

  Future<List<Todo>> readTodo() async {
    final stub = TodoServiceClient(clientChannel);
    var response = await stub.readTodo(TodoReadRequest());
    return response.todos;
  }

  Future<void> createTodo({id, title, completed}) async {
    streamController.add(
      Dynamic(
        todoCreate: TodoCreateRequest(
            todo: Todo(id: id, title: title, completed: completed)),
      ),
    );
  }

  Future<void> updateTodo({id}) async {
    streamController.add(
      Dynamic(
        todoUpdate: TodoUpdateRequest(id: id),
      ),
    );
  }

  Future<void> deleteTodo({id}) async {
    streamController.add(
      Dynamic(
        todoDelete: TodoDeleteRequest(id: id),
      ),
    );
  }
}
