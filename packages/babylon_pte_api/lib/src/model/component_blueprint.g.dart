// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_blueprint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComponentBlueprint extends ComponentBlueprint {
  @override
  final String packageAddress;
  @override
  final String blueprintName;

  factory _$ComponentBlueprint(
          [void Function(ComponentBlueprintBuilder)? updates]) =>
      (new ComponentBlueprintBuilder()..update(updates)).build();

  _$ComponentBlueprint._(
      {required this.packageAddress, required this.blueprintName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        packageAddress, 'ComponentBlueprint', 'packageAddress');
    BuiltValueNullFieldError.checkNotNull(
        blueprintName, 'ComponentBlueprint', 'blueprintName');
  }

  @override
  ComponentBlueprint rebuild(
          void Function(ComponentBlueprintBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComponentBlueprintBuilder toBuilder() =>
      new ComponentBlueprintBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComponentBlueprint &&
        packageAddress == other.packageAddress &&
        blueprintName == other.blueprintName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, packageAddress.hashCode), blueprintName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComponentBlueprint')
          ..add('packageAddress', packageAddress)
          ..add('blueprintName', blueprintName))
        .toString();
  }
}

class ComponentBlueprintBuilder
    implements Builder<ComponentBlueprint, ComponentBlueprintBuilder> {
  _$ComponentBlueprint? _$v;

  String? _packageAddress;
  String? get packageAddress => _$this._packageAddress;
  set packageAddress(String? packageAddress) =>
      _$this._packageAddress = packageAddress;

  String? _blueprintName;
  String? get blueprintName => _$this._blueprintName;
  set blueprintName(String? blueprintName) =>
      _$this._blueprintName = blueprintName;

  ComponentBlueprintBuilder() {
    ComponentBlueprint._defaults(this);
  }

  ComponentBlueprintBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packageAddress = $v.packageAddress;
      _blueprintName = $v.blueprintName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComponentBlueprint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComponentBlueprint;
  }

  @override
  void update(void Function(ComponentBlueprintBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ComponentBlueprint build() {
    final _$result = _$v ??
        new _$ComponentBlueprint._(
            packageAddress: BuiltValueNullFieldError.checkNotNull(
                packageAddress, 'ComponentBlueprint', 'packageAddress'),
            blueprintName: BuiltValueNullFieldError.checkNotNull(
                blueprintName, 'ComponentBlueprint', 'blueprintName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
