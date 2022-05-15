// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonce.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Nonce extends Nonce {
  @override
  final int value;

  factory _$Nonce([void Function(NonceBuilder)? updates]) =>
      (new NonceBuilder()..update(updates)).build();

  _$Nonce._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'Nonce', 'value');
  }

  @override
  Nonce rebuild(void Function(NonceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonceBuilder toBuilder() => new NonceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Nonce && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Nonce')..add('value', value))
        .toString();
  }
}

class NonceBuilder implements Builder<Nonce, NonceBuilder> {
  _$Nonce? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  NonceBuilder() {
    Nonce._defaults(this);
  }

  NonceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Nonce other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Nonce;
  }

  @override
  void update(void Function(NonceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Nonce build() {
    final _$result = _$v ??
        new _$Nonce._(
            value:
                BuiltValueNullFieldError.checkNotNull(value, 'Nonce', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
