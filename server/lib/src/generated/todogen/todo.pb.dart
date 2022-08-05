///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Todo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Todo', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completed')
    ..hasRequiredFields = false
  ;

  Todo._() : super();
  factory Todo({
    $core.int? id,
    $core.String? title,
    $core.bool? completed,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (completed != null) {
      _result.completed = completed;
    }
    return _result;
  }
  factory Todo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Todo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Todo clone() => Todo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Todo copyWith(void Function(Todo) updates) => super.copyWith((message) => updates(message as Todo)) as Todo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Todo create() => Todo._();
  Todo createEmptyInstance() => create();
  static $pb.PbList<Todo> createRepeated() => $pb.PbList<Todo>();
  @$core.pragma('dart2js:noInline')
  static Todo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Todo>(create);
  static Todo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get completed => $_getBF(2);
  @$pb.TagNumber(3)
  set completed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompleted() => clearField(3);
}

class ListTodo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTodo', createEmptyInstance: create)
    ..pc<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todos', $pb.PbFieldType.PM, subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  ListTodo._() : super();
  factory ListTodo({
    $core.Iterable<Todo>? todos,
  }) {
    final _result = create();
    if (todos != null) {
      _result.todos.addAll(todos);
    }
    return _result;
  }
  factory ListTodo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTodo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTodo clone() => ListTodo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTodo copyWith(void Function(ListTodo) updates) => super.copyWith((message) => updates(message as ListTodo)) as ListTodo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTodo create() => ListTodo._();
  ListTodo createEmptyInstance() => create();
  static $pb.PbList<ListTodo> createRepeated() => $pb.PbList<ListTodo>();
  @$core.pragma('dart2js:noInline')
  static ListTodo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTodo>(create);
  static ListTodo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Todo> get todos => $_getList(0);
}

class Dynamic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Dynamic', createEmptyInstance: create)
    ..aOM<TodoCreateRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todoCreate', protoName: 'todoCreate', subBuilder: TodoCreateRequest.create)
    ..aOM<TodoUpdateRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todoUpdate', protoName: 'todoUpdate', subBuilder: TodoUpdateRequest.create)
    ..aOM<TodoDeleteRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todoDelete', protoName: 'todoDelete', subBuilder: TodoDeleteRequest.create)
    ..hasRequiredFields = false
  ;

  Dynamic._() : super();
  factory Dynamic({
    TodoCreateRequest? todoCreate,
    TodoUpdateRequest? todoUpdate,
    TodoDeleteRequest? todoDelete,
  }) {
    final _result = create();
    if (todoCreate != null) {
      _result.todoCreate = todoCreate;
    }
    if (todoUpdate != null) {
      _result.todoUpdate = todoUpdate;
    }
    if (todoDelete != null) {
      _result.todoDelete = todoDelete;
    }
    return _result;
  }
  factory Dynamic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Dynamic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Dynamic clone() => Dynamic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Dynamic copyWith(void Function(Dynamic) updates) => super.copyWith((message) => updates(message as Dynamic)) as Dynamic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Dynamic create() => Dynamic._();
  Dynamic createEmptyInstance() => create();
  static $pb.PbList<Dynamic> createRepeated() => $pb.PbList<Dynamic>();
  @$core.pragma('dart2js:noInline')
  static Dynamic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dynamic>(create);
  static Dynamic? _defaultInstance;

  @$pb.TagNumber(1)
  TodoCreateRequest get todoCreate => $_getN(0);
  @$pb.TagNumber(1)
  set todoCreate(TodoCreateRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTodoCreate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTodoCreate() => clearField(1);
  @$pb.TagNumber(1)
  TodoCreateRequest ensureTodoCreate() => $_ensure(0);

  @$pb.TagNumber(2)
  TodoUpdateRequest get todoUpdate => $_getN(1);
  @$pb.TagNumber(2)
  set todoUpdate(TodoUpdateRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTodoUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTodoUpdate() => clearField(2);
  @$pb.TagNumber(2)
  TodoUpdateRequest ensureTodoUpdate() => $_ensure(1);

  @$pb.TagNumber(3)
  TodoDeleteRequest get todoDelete => $_getN(2);
  @$pb.TagNumber(3)
  set todoDelete(TodoDeleteRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTodoDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearTodoDelete() => clearField(3);
  @$pb.TagNumber(3)
  TodoDeleteRequest ensureTodoDelete() => $_ensure(2);
}

class TodoCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoCreateRequest', createEmptyInstance: create)
    ..aOM<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todo', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  TodoCreateRequest._() : super();
  factory TodoCreateRequest({
    Todo? todo,
  }) {
    final _result = create();
    if (todo != null) {
      _result.todo = todo;
    }
    return _result;
  }
  factory TodoCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoCreateRequest clone() => TodoCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoCreateRequest copyWith(void Function(TodoCreateRequest) updates) => super.copyWith((message) => updates(message as TodoCreateRequest)) as TodoCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoCreateRequest create() => TodoCreateRequest._();
  TodoCreateRequest createEmptyInstance() => create();
  static $pb.PbList<TodoCreateRequest> createRepeated() => $pb.PbList<TodoCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static TodoCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoCreateRequest>(create);
  static TodoCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Todo get todo => $_getN(0);
  @$pb.TagNumber(1)
  set todo(Todo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTodo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTodo() => clearField(1);
  @$pb.TagNumber(1)
  Todo ensureTodo() => $_ensure(0);
}

class TodoCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoCreateResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  TodoCreateResponse._() : super();
  factory TodoCreateResponse({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory TodoCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoCreateResponse clone() => TodoCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoCreateResponse copyWith(void Function(TodoCreateResponse) updates) => super.copyWith((message) => updates(message as TodoCreateResponse)) as TodoCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoCreateResponse create() => TodoCreateResponse._();
  TodoCreateResponse createEmptyInstance() => create();
  static $pb.PbList<TodoCreateResponse> createRepeated() => $pb.PbList<TodoCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoCreateResponse>(create);
  static TodoCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class TodoReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoReadRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TodoReadRequest._() : super();
  factory TodoReadRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TodoReadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoReadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoReadRequest clone() => TodoReadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoReadRequest copyWith(void Function(TodoReadRequest) updates) => super.copyWith((message) => updates(message as TodoReadRequest)) as TodoReadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoReadRequest create() => TodoReadRequest._();
  TodoReadRequest createEmptyInstance() => create();
  static $pb.PbList<TodoReadRequest> createRepeated() => $pb.PbList<TodoReadRequest>();
  @$core.pragma('dart2js:noInline')
  static TodoReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoReadRequest>(create);
  static TodoReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TodoReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoReadResponse', createEmptyInstance: create)
    ..pc<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todos', $pb.PbFieldType.PM, subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  TodoReadResponse._() : super();
  factory TodoReadResponse({
    $core.Iterable<Todo>? todos,
  }) {
    final _result = create();
    if (todos != null) {
      _result.todos.addAll(todos);
    }
    return _result;
  }
  factory TodoReadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoReadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoReadResponse clone() => TodoReadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoReadResponse copyWith(void Function(TodoReadResponse) updates) => super.copyWith((message) => updates(message as TodoReadResponse)) as TodoReadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoReadResponse create() => TodoReadResponse._();
  TodoReadResponse createEmptyInstance() => create();
  static $pb.PbList<TodoReadResponse> createRepeated() => $pb.PbList<TodoReadResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoReadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoReadResponse>(create);
  static TodoReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Todo> get todos => $_getList(0);
}

class TodoUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoUpdateRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TodoUpdateRequest._() : super();
  factory TodoUpdateRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TodoUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoUpdateRequest clone() => TodoUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoUpdateRequest copyWith(void Function(TodoUpdateRequest) updates) => super.copyWith((message) => updates(message as TodoUpdateRequest)) as TodoUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoUpdateRequest create() => TodoUpdateRequest._();
  TodoUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<TodoUpdateRequest> createRepeated() => $pb.PbList<TodoUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static TodoUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoUpdateRequest>(create);
  static TodoUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TodoUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoUpdateResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  TodoUpdateResponse._() : super();
  factory TodoUpdateResponse({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory TodoUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoUpdateResponse clone() => TodoUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoUpdateResponse copyWith(void Function(TodoUpdateResponse) updates) => super.copyWith((message) => updates(message as TodoUpdateResponse)) as TodoUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoUpdateResponse create() => TodoUpdateResponse._();
  TodoUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<TodoUpdateResponse> createRepeated() => $pb.PbList<TodoUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoUpdateResponse>(create);
  static TodoUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class TodoDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoDeleteRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TodoDeleteRequest._() : super();
  factory TodoDeleteRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TodoDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoDeleteRequest clone() => TodoDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoDeleteRequest copyWith(void Function(TodoDeleteRequest) updates) => super.copyWith((message) => updates(message as TodoDeleteRequest)) as TodoDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoDeleteRequest create() => TodoDeleteRequest._();
  TodoDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<TodoDeleteRequest> createRepeated() => $pb.PbList<TodoDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static TodoDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoDeleteRequest>(create);
  static TodoDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TodoDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoDeleteResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  TodoDeleteResponse._() : super();
  factory TodoDeleteResponse({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory TodoDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoDeleteResponse clone() => TodoDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoDeleteResponse copyWith(void Function(TodoDeleteResponse) updates) => super.copyWith((message) => updates(message as TodoDeleteResponse)) as TodoDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoDeleteResponse create() => TodoDeleteResponse._();
  TodoDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<TodoDeleteResponse> createRepeated() => $pb.PbList<TodoDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoDeleteResponse>(create);
  static TodoDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

