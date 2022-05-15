// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_fungible.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NonFungible extends NonFungible {
  @override
  final String resourceAddress;
  @override
  final String immutableData;
  @override
  final String mutableData;

  factory _$NonFungible([void Function(NonFungibleBuilder)? updates]) =>
      (new NonFungibleBuilder()..update(updates)).build();

  _$NonFungible._(
      {required this.resourceAddress,
      required this.immutableData,
      required this.mutableData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceAddress, 'NonFungible', 'resourceAddress');
    BuiltValueNullFieldError.checkNotNull(
        immutableData, 'NonFungible', 'immutableData');
    BuiltValueNullFieldError.checkNotNull(
        mutableData, 'NonFungible', 'mutableData');
  }

  @override
  NonFungible rebuild(void Function(NonFungibleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonFungibleBuilder toBuilder() => new NonFungibleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NonFungible &&
        resourceAddress == other.resourceAddress &&
        immutableData == other.immutableData &&
        mutableData == other.mutableData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, resourceAddress.hashCode), immutableData.hashCode),
        mutableData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NonFungible')
          ..add('resourceAddress', resourceAddress)
          ..add('immutableData', immutableData)
          ..add('mutableData', mutableData))
        .toString();
  }
}

class NonFungibleBuilder implements Builder<NonFungible, NonFungibleBuilder> {
  _$NonFungible? _$v;

  String? _resourceAddress;
  String? get resourceAddress => _$this._resourceAddress;
  set resourceAddress(String? resourceAddress) =>
      _$this._resourceAddress = resourceAddress;

  String? _immutableData;
  String? get immutableData => _$this._immutableData;
  set immutableData(String? immutableData) =>
      _$this._immutableData = immutableData;

  String? _mutableData;
  String? get mutableData => _$this._mutableData;
  set mutableData(String? mutableData) => _$this._mutableData = mutableData;

  NonFungibleBuilder() {
    NonFungible._defaults(this);
  }

  NonFungibleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceAddress = $v.resourceAddress;
      _immutableData = $v.immutableData;
      _mutableData = $v.mutableData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NonFungible other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NonFungible;
  }

  @override
  void update(void Function(NonFungibleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NonFungible build() {
    final _$result = _$v ??
        new _$NonFungible._(
            resourceAddress: BuiltValueNullFieldError.checkNotNull(
                resourceAddress, 'NonFungible', 'resourceAddress'),
            immutableData: BuiltValueNullFieldError.checkNotNull(
                immutableData, 'NonFungible', 'immutableData'),
            mutableData: BuiltValueNullFieldError.checkNotNull(
                mutableData, 'NonFungible', 'mutableData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
