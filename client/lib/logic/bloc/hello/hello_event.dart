part of 'hello_bloc.dart';

abstract class HelloEvent {}

class GetHelloEvent extends HelloEvent {
  String name;
  String surname;
  GetHelloEvent({
    required this.name,
    required this.surname,
  });
}
