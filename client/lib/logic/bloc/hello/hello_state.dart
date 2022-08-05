part of 'hello_bloc.dart';

class HelloState {
  String? helloResponse;
  HelloState({
    this.helloResponse,
  });

  HelloState copyWith({String? helloResponse}) {
    return HelloState(helloResponse: helloResponse ?? this.helloResponse);
  }
}
