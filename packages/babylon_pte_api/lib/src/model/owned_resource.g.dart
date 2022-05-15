// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OwnedResource extends OwnedResource {
  @override
  final String amount;
  @override
  final String resourceAddress;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final BuiltList<String>? nonFungibleIds;

  factory _$OwnedResource([void Function(OwnedResourceBuilder)? updates]) =>
      (new OwnedResourceBuilder()..update(updates)).build();

  _$OwnedResource._(
      {required this.amount,
      required this.resourceAddress,
      required this.name,
      required this.symbol,
      this.nonFungibleIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(amount, 'OwnedResource', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        resourceAddress, 'OwnedResource', 'resourceAddress');
    BuiltValueNullFieldError.checkNotNull(name, 'OwnedResource', 'name');
    BuiltValueNullFieldError.checkNotNull(symbol, 'OwnedResource', 'symbol');
  }

  @override
  OwnedResource rebuild(void Function(OwnedResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnedResourceBuilder toBuilder() => new OwnedResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnedResource &&
        amount == other.amount &&
        resourceAddress == other.resourceAddress &&
        name == other.name &&
        symbol == other.symbol &&
        nonFungibleIds == other.nonFungibleIds;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, amount.hashCode), resourceAddress.hashCode),
                name.hashCode),
            symbol.hashCode),
        nonFungibleIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OwnedResource')
          ..add('amount', amount)
          ..add('resourceAddress', resourceAddress)
          ..add('name', name)
          ..add('symbol', symbol)
          ..add('nonFungibleIds', nonFungibleIds))
        .toString();
  }
}

class OwnedResourceBuilder
    implements Builder<OwnedResource, OwnedResourceBuilder> {
  _$OwnedResource? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _resourceAddress;
  String? get resourceAddress => _$this._resourceAddress;
  set resourceAddress(String? resourceAddress) =>
      _$this._resourceAddress = resourceAddress;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  ListBuilder<String>? _nonFungibleIds;
  ListBuilder<String> get nonFungibleIds =>
      _$this._nonFungibleIds ??= new ListBuilder<String>();
  set nonFungibleIds(ListBuilder<String>? nonFungibleIds) =>
      _$this._nonFungibleIds = nonFungibleIds;

  OwnedResourceBuilder() {
    OwnedResource._defaults(this);
  }

  OwnedResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _resourceAddress = $v.resourceAddress;
      _name = $v.name;
      _symbol = $v.symbol;
      _nonFungibleIds = $v.nonFungibleIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnedResource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OwnedResource;
  }

  @override
  void update(void Function(OwnedResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OwnedResource build() {
    _$OwnedResource _$result;
    try {
      _$result = _$v ??
          new _$OwnedResource._(
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, 'OwnedResource', 'amount'),
              resourceAddress: BuiltValueNullFieldError.checkNotNull(
                  resourceAddress, 'OwnedResource', 'resourceAddress'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'OwnedResource', 'name'),
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, 'OwnedResource', 'symbol'),
              nonFungibleIds: _nonFungibleIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nonFungibleIds';
        _nonFungibleIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OwnedResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
