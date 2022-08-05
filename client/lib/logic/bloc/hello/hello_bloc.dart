import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../service/hello_service.dart';
import '../../../utils/grpc.dart';

part 'hello_event.dart';
part 'hello_state.dart';

class HelloBloc extends Bloc<HelloEvent, HelloState> {
  late HelloService _helloService;
  final GrpcClient grpcClient;
  HelloBloc({required this.grpcClient}) : super(HelloState()) {
    _helloService = HelloService(clientChannel: grpcClient.clientChannel);
    on<GetHelloEvent>((event, emit) async {
      final String helloResponse = await _helloService.getHello(
          name: event.name, surname: event.surname);
      emit(state.copyWith(helloResponse: helloResponse));
    });
  }
}
