///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloDescriptor instead')
const Hello$json = const {
  '1': 'Hello',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'surname', '3': 2, '4': 1, '5': 9, '10': 'surname'},
  ],
};

/// Descriptor for `Hello`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloDescriptor = $convert.base64Decode('CgVIZWxsbxISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3N1cm5hbWUYAiABKAlSB3N1cm5hbWU=');
@$core.Deprecated('Use helloStreamDescriptor instead')
const HelloStream$json = const {
  '1': 'HelloStream',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloStreamDescriptor = $convert.base64Decode('CgtIZWxsb1N0cmVhbRISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use helloResponseDescriptor instead')
const HelloResponse$json = const {
  '1': 'HelloResponse',
  '2': const [
    const {'1': 'helloResponse', '3': 1, '4': 1, '5': 9, '10': 'helloResponse'},
  ],
};

/// Descriptor for `HelloResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloResponseDescriptor = $convert.base64Decode('Cg1IZWxsb1Jlc3BvbnNlEiQKDWhlbGxvUmVzcG9uc2UYASABKAlSDWhlbGxvUmVzcG9uc2U=');
