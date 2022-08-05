///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hello.pb.dart' as $0;
export 'hello.pb.dart';

class HelloServiceClient extends $grpc.Client {
  static final _$getHello = $grpc.ClientMethod<$0.Hello, $0.HelloResponse>(
      '/HelloService/getHello',
      ($0.Hello value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HelloResponse.fromBuffer(value));
  static final _$sayHello = $grpc.ClientMethod<$0.Hello, $0.HelloResponse>(
      '/HelloService/sayHello',
      ($0.Hello value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HelloResponse.fromBuffer(value));

  HelloServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.HelloResponse> getHello($0.Hello request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHello, request, options: options);
  }

  $grpc.ResponseStream<$0.HelloResponse> sayHello(
      $async.Stream<$0.Hello> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sayHello, request, options: options);
  }
}

abstract class HelloServiceBase extends $grpc.Service {
  $core.String get $name => 'HelloService';

  HelloServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Hello, $0.HelloResponse>(
        'getHello',
        getHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Hello.fromBuffer(value),
        ($0.HelloResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Hello, $0.HelloResponse>(
        'sayHello',
        sayHello,
        true,
        true,
        ($core.List<$core.int> value) => $0.Hello.fromBuffer(value),
        ($0.HelloResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloResponse> getHello_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Hello> request) async {
    return getHello(call, await request);
  }

  $async.Future<$0.HelloResponse> getHello(
      $grpc.ServiceCall call, $0.Hello request);
  $async.Stream<$0.HelloResponse> sayHello(
      $grpc.ServiceCall call, $async.Stream<$0.Hello> request);
}
