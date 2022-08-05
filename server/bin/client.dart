import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:server/src/generated/todo_barrel.dart';

void main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 5000,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final stub = TodoServiceClient(channel);

  StreamController<Dynamic> streamController = StreamController<Dynamic>();
  ResponseStream<ListTodo> stream = stub.streamTodo(streamController.stream);
  stream.listen((value) {
    print(value.todos.length);
  });
  streamController.add(Dynamic(todoDelete: TodoDeleteRequest(id: 1))); 
  streamController.add(Dynamic(todoDelete: TodoDeleteRequest(id: 2))); 
  streamController.add(Dynamic(todoDelete: TodoDeleteRequest(id: 3))); 
  streamController.add(Dynamic(todoDelete: TodoDeleteRequest(id: 4))); 
  streamController.add(Dynamic(todoDelete: TodoDeleteRequest(id: 5))); 
}
