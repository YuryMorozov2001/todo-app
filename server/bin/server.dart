import 'package:grpc/grpc.dart'; 
import 'package:server/src/service/hello_serivce.dart';
import 'package:server/src/service/todo_service.dart';

void main(List<String> arguments) async {
  final server = Server([HelloService(), TodoService()]);
  await server.serve(port: 5000);
  print('server opened on port: ${server.port}');
}
