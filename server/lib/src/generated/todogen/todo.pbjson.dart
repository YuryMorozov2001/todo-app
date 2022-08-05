///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'completed', '3': 3, '4': 1, '5': 8, '10': 'completed'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSHAoJY29tcGxldGVkGAMgASgIUgljb21wbGV0ZWQ=');
@$core.Deprecated('Use listTodoDescriptor instead')
const ListTodo$json = const {
  '1': 'ListTodo',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `ListTodo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTodoDescriptor = $convert.base64Decode('CghMaXN0VG9kbxIbCgV0b2RvcxgBIAMoCzIFLlRvZG9SBXRvZG9z');
@$core.Deprecated('Use dynamicDescriptor instead')
const Dynamic$json = const {
  '1': 'Dynamic',
  '2': const [
    const {'1': 'todoCreate', '3': 1, '4': 1, '5': 11, '6': '.TodoCreateRequest', '10': 'todoCreate'},
    const {'1': 'todoUpdate', '3': 2, '4': 1, '5': 11, '6': '.TodoUpdateRequest', '10': 'todoUpdate'},
    const {'1': 'todoDelete', '3': 3, '4': 1, '5': 11, '6': '.TodoDeleteRequest', '10': 'todoDelete'},
  ],
};

/// Descriptor for `Dynamic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicDescriptor = $convert.base64Decode('CgdEeW5hbWljEjIKCnRvZG9DcmVhdGUYASABKAsyEi5Ub2RvQ3JlYXRlUmVxdWVzdFIKdG9kb0NyZWF0ZRIyCgp0b2RvVXBkYXRlGAIgASgLMhIuVG9kb1VwZGF0ZVJlcXVlc3RSCnRvZG9VcGRhdGUSMgoKdG9kb0RlbGV0ZRgDIAEoCzISLlRvZG9EZWxldGVSZXF1ZXN0Ugp0b2RvRGVsZXRl');
@$core.Deprecated('Use todoCreateRequestDescriptor instead')
const TodoCreateRequest$json = const {
  '1': 'TodoCreateRequest',
  '2': const [
    const {'1': 'todo', '3': 1, '4': 1, '5': 11, '6': '.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `TodoCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoCreateRequestDescriptor = $convert.base64Decode('ChFUb2RvQ3JlYXRlUmVxdWVzdBIZCgR0b2RvGAEgASgLMgUuVG9kb1IEdG9kbw==');
@$core.Deprecated('Use todoCreateResponseDescriptor instead')
const TodoCreateResponse$json = const {
  '1': 'TodoCreateResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `TodoCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoCreateResponseDescriptor = $convert.base64Decode('ChJUb2RvQ3JlYXRlUmVzcG9uc2USFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use todoReadRequestDescriptor instead')
const TodoReadRequest$json = const {
  '1': 'TodoReadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TodoReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoReadRequestDescriptor = $convert.base64Decode('Cg9Ub2RvUmVhZFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use todoReadResponseDescriptor instead')
const TodoReadResponse$json = const {
  '1': 'TodoReadResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `TodoReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoReadResponseDescriptor = $convert.base64Decode('ChBUb2RvUmVhZFJlc3BvbnNlEhsKBXRvZG9zGAEgAygLMgUuVG9kb1IFdG9kb3M=');
@$core.Deprecated('Use todoUpdateRequestDescriptor instead')
const TodoUpdateRequest$json = const {
  '1': 'TodoUpdateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TodoUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoUpdateRequestDescriptor = $convert.base64Decode('ChFUb2RvVXBkYXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use todoUpdateResponseDescriptor instead')
const TodoUpdateResponse$json = const {
  '1': 'TodoUpdateResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `TodoUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoUpdateResponseDescriptor = $convert.base64Decode('ChJUb2RvVXBkYXRlUmVzcG9uc2USFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use todoDeleteRequestDescriptor instead')
const TodoDeleteRequest$json = const {
  '1': 'TodoDeleteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TodoDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDeleteRequestDescriptor = $convert.base64Decode('ChFUb2RvRGVsZXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use todoDeleteResponseDescriptor instead')
const TodoDeleteResponse$json = const {
  '1': 'TodoDeleteResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `TodoDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDeleteResponseDescriptor = $convert.base64Decode('ChJUb2RvRGVsZXRlUmVzcG9uc2USFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
