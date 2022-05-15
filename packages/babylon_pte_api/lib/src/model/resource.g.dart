// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Resource extends Resource {
  @override
  final String resourceType;
  @override
  final int divisibility;
  @override
  final BuiltList<ResourceMetadata> metadata;
  @override
  final String totalSupply;

  factory _$Resource([void Function(ResourceBuilder)? updates]) =>
      (new ResourceBuilder()..update(updates)).build();

  _$Resource._(
      {required this.resourceType,
      required this.divisibility,
      required this.metadata,
      required this.totalSupply})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, 'Resource', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        divisibility, 'Resource', 'divisibility');
    BuiltValueNullFieldError.checkNotNull(metadata, 'Resource', 'metadata');
    BuiltValueNullFieldError.checkNotNull(
        totalSupply, 'Resource', 'totalSupply');
  }

  @override
  Resource rebuild(void Function(ResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceBuilder toBuilder() => new ResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resource &&
        resourceType == other.resourceType &&
        divisibility == other.divisibility &&
        metadata == other.metadata &&
        totalSupply == other.totalSupply;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, resourceType.hashCode), divisibility.hashCode),
            metadata.hashCode),
        totalSupply.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Resource')
          ..add('resourceType', resourceType)
          ..add('divisibility', divisibility)
          ..add('metadata', metadata)
          ..add('totalSupply', totalSupply))
        .toString();
  }
}

class ResourceBuilder implements Builder<Resource, ResourceBuilder> {
  _$Resource? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  int? _divisibility;
  int? get divisibility => _$this._divisibility;
  set divisibility(int? divisibility) => _$this._divisibility = divisibility;

  ListBuilder<ResourceMetadata>? _metadata;
  ListBuilder<ResourceMetadata> get metadata =>
      _$this._metadata ??= new ListBuilder<ResourceMetadata>();
  set metadata(ListBuilder<ResourceMetadata>? metadata) =>
      _$this._metadata = metadata;

  String? _totalSupply;
  String? get totalSupply => _$this._totalSupply;
  set totalSupply(String? totalSupply) => _$this._totalSupply = totalSupply;

  ResourceBuilder() {
    Resource._defaults(this);
  }

  ResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _divisibility = $v.divisibility;
      _metadata = $v.metadata.toBuilder();
      _totalSupply = $v.totalSupply;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Resource;
  }

  @override
  void update(void Function(ResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Resource build() {
    _$Resource _$result;
    try {
      _$result = _$v ??
          new _$Resource._(
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, 'Resource', 'resourceType'),
              divisibility: BuiltValueNullFieldError.checkNotNull(
                  divisibility, 'Resource', 'divisibility'),
              metadata: metadata.build(),
              totalSupply: BuiltValueNullFieldError.checkNotNull(
                  totalSupply, 'Resource', 'totalSupply'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Resource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
