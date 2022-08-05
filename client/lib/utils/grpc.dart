import 'package:grpc/grpc.dart';
 

class GrpcClient {
  final ClientChannel _clientChannel;
  GrpcClient()
      : _clientChannel = ClientChannel("10.0.2.2",
            port: 5000,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ));

  ClientChannel get clientChannel => _clientChannel;
}
