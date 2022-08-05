///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$createTodo =
      $grpc.ClientMethod<$0.TodoCreateRequest, $0.TodoCreateResponse>(
          '/TodoService/createTodo',
          ($0.TodoCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TodoCreateResponse.fromBuffer(value));
  static final _$readTodo =
      $grpc.ClientMethod<$0.TodoReadRequest, $0.TodoReadResponse>(
          '/TodoService/readTodo',
          ($0.TodoReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TodoReadResponse.fromBuffer(value));
  static final _$updateTodo =
      $grpc.ClientMethod<$0.TodoUpdateRequest, $0.TodoUpdateResponse>(
          '/TodoService/updateTodo',
          ($0.TodoUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TodoUpdateResponse.fromBuffer(value));
  static final _$deleteTodo =
      $grpc.ClientMethod<$0.TodoDeleteRequest, $0.TodoDeleteResponse>(
          '/TodoService/deleteTodo',
          ($0.TodoDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TodoDeleteResponse.fromBuffer(value));
  static final _$streamTodo = $grpc.ClientMethod<$0.Dynamic, $0.ListTodo>(
      '/TodoService/streamTodo',
      ($0.Dynamic value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListTodo.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoCreateResponse> createTodo(
      $0.TodoCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoReadResponse> readTodo($0.TodoReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoUpdateResponse> updateTodo(
      $0.TodoUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoDeleteResponse> deleteTodo(
      $0.TodoDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }

  $grpc.ResponseStream<$0.ListTodo> streamTodo(
      $async.Stream<$0.Dynamic> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoCreateRequest, $0.TodoCreateResponse>(
        'createTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoCreateRequest.fromBuffer(value),
        ($0.TodoCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoReadRequest, $0.TodoReadResponse>(
        'readTodo',
        readTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoReadRequest.fromBuffer(value),
        ($0.TodoReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoUpdateRequest, $0.TodoUpdateResponse>(
        'updateTodo',
        updateTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoUpdateRequest.fromBuffer(value),
        ($0.TodoUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoDeleteRequest, $0.TodoDeleteResponse>(
        'deleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoDeleteRequest.fromBuffer(value),
        ($0.TodoDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Dynamic, $0.ListTodo>(
        'streamTodo',
        streamTodo,
        true,
        true,
        ($core.List<$core.int> value) => $0.Dynamic.fromBuffer(value),
        ($0.ListTodo value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoCreateResponse> createTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.TodoCreateRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.TodoReadResponse> readTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TodoReadRequest> request) async {
    return readTodo(call, await request);
  }

  $async.Future<$0.TodoUpdateResponse> updateTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.TodoUpdateRequest> request) async {
    return updateTodo(call, await request);
  }

  $async.Future<$0.TodoDeleteResponse> deleteTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.TodoDeleteRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.TodoCreateResponse> createTodo(
      $grpc.ServiceCall call, $0.TodoCreateRequest request);
  $async.Future<$0.TodoReadResponse> readTodo(
      $grpc.ServiceCall call, $0.TodoReadRequest request);
  $async.Future<$0.TodoUpdateResponse> updateTodo(
      $grpc.ServiceCall call, $0.TodoUpdateRequest request);
  $async.Future<$0.TodoDeleteResponse> deleteTodo(
      $grpc.ServiceCall call, $0.TodoDeleteRequest request);
  $async.Stream<$0.ListTodo> streamTodo(
      $grpc.ServiceCall call, $async.Stream<$0.Dynamic> request);
}
