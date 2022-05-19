// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceMetadata extends ResourceMetadata {
  @override
  final String name;
  @override
  final String value;

  factory _$ResourceMetadata(
          [void Function(ResourceMetadataBuilder)? updates]) =>
      (new ResourceMetadataBuilder()..update(updates)).build();

  _$ResourceMetadata._({required this.name, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'ResourceMetadata', 'name');
    BuiltValueNullFieldError.checkNotNull(value, 'ResourceMetadata', 'value');
  }

  @override
  ResourceMetadata rebuild(void Function(ResourceMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceMetadataBuilder toBuilder() =>
      new ResourceMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceMetadata &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResourceMetadata')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class ResourceMetadataBuilder
    implements Builder<ResourceMetadata, ResourceMetadataBuilder> {
  _$ResourceMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ResourceMetadataBuilder() {
    ResourceMetadata._defaults(this);
  }

  ResourceMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceMetadata;
  }

  @override
  void update(void Function(ResourceMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResourceMetadata build() {
    final _$result = _$v ??
        new _$ResourceMetadata._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'ResourceMetadata', 'name'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'ResourceMetadata', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
