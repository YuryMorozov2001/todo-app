import 'package:server/src/generated/hello_barrel.dart';
import 'package:grpc/grpc.dart';

class HelloService extends HelloServiceBase {
  @override
  Future<HelloResponse> getHello(ServiceCall call, Hello request) async {
    print(request.name);
    return HelloResponse(
        helloResponse: 'Hello ${request.name} ${request.surname}!');
  }

  @override
  Stream<HelloResponse> sayHello(
      ServiceCall call, Stream<Hello> request) async* {
    await for (var hello in request) {
      print('got name - ${hello.name}');
      getHello(call, Hello(name: hello.name, surname: hello.surname)); 
    }
  }
}
