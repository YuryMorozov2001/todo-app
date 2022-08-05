import 'package:grpc/grpc.dart';

import '../data/db.dart';
import '../generated/todo_barrel.dart';

class TodoService extends TodoServiceBase {
  @override
  Future<TodoCreateResponse> createTodo(
      ServiceCall call, TodoCreateRequest request) async {
    todos.add({
      'id': request.todo.id,
      'title': request.todo.title,
      'completed': request.todo.completed
    });
    return TodoCreateResponse(result: true);
  }

  @override
  Future<TodoReadResponse> readTodo(
      ServiceCall call, TodoReadRequest request) async {
    if (request.id > 0) {
      final todo = findTodo(request.id);
      return TodoReadResponse(todos: todo);
    }
    final List<Todo> listTodo = getTodoList();
    return TodoReadResponse(todos: listTodo);
  }

  @override
  Future<TodoUpdateResponse> updateTodo(
      ServiceCall call, TodoUpdateRequest request) async {
    var target = todos.firstWhere((element) => element['id'] == request.id);
    target['completed'] = target['completed'] == true ? false : true;
    return TodoUpdateResponse(result: true);
  }

  @override
  Future<TodoDeleteResponse> deleteTodo(
      ServiceCall call, TodoDeleteRequest request) async {
    todos.removeWhere((e) => e['id'] == request.id);
    return TodoDeleteResponse(result: true);
  }

  @override
  Stream<ListTodo> streamTodo(
      ServiceCall call, Stream<Dynamic> request) async* {
    await for (var req in request) {
      if (!req.todoCreate.isFrozen) {
        createTodo(call, TodoCreateRequest(todo: req.todoCreate.todo));
      }
      if (!req.todoDelete.isFrozen) {
        deleteTodo(call, TodoDeleteRequest(id: req.todoDelete.id));
      }
      if (!req.todoUpdate.isFrozen) {
        updateTodo(call, TodoUpdateRequest(id: req.todoUpdate.id));
      }
      List<Todo> todoList = [];
      if (todos.isEmpty) {
        print('array is empty');
        yield ListTodo(todos: []);
      } else {
        for (var todo in todos) {
          todoList.add(Todo.fromJson('''{
        "1":"${todo['id']}",
        "2":"${todo['title']}",
        "3":"${todo['completed']}"
      }'''));
          yield ListTodo(todos: todoList);
        }
      }
    }
  }
}

List<Todo> findTodo(int id) {
  return todos.where((e) => e['id'] == id).map(convertToTodo).toList();
}

List<Todo> getTodoList() {
  return todos.map(convertToTodo).toList();
}

Todo convertToTodo(Map todo) => Todo.fromJson(
    '{"1": "${todo['id']}", "2":"${todo['title']}", "3":"${todo['completed']}"}');
