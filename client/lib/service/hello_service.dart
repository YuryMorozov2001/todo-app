import 'package:grpc/grpc.dart';

import '../generated/hello_barrel.dart';

class HelloService {
  ClientChannel clientChannel;
  HelloService({
    required this.clientChannel,
  });

  Future<String> getHello({name, surname}) async {
    final stub = HelloServiceClient(clientChannel);
    var response = await stub.getHello(Hello(name: name, surname: surname));
    return response.helloResponse;
  }
}
