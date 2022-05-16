// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Signature extends Signature {
  @override
  final String publicKey;
  @override
  final String signature;

  factory _$Signature([void Function(SignatureBuilder)? updates]) =>
      (new SignatureBuilder()..update(updates)).build();

  _$Signature._({required this.publicKey, required this.signature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(publicKey, 'Signature', 'publicKey');
    BuiltValueNullFieldError.checkNotNull(signature, 'Signature', 'signature');
  }

  @override
  Signature rebuild(void Function(SignatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignatureBuilder toBuilder() => new SignatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Signature &&
        publicKey == other.publicKey &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, publicKey.hashCode), signature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Signature')
          ..add('publicKey', publicKey)
          ..add('signature', signature))
        .toString();
  }
}

class SignatureBuilder implements Builder<Signature, SignatureBuilder> {
  _$Signature? _$v;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  SignatureBuilder() {
    Signature._defaults(this);
  }

  SignatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Signature other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Signature;
  }

  @override
  void update(void Function(SignatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Signature build() {
    final _$result = _$v ??
        new _$Signature._(
            publicKey: BuiltValueNullFieldError.checkNotNull(
                publicKey, 'Signature', 'publicKey'),
            signature: BuiltValueNullFieldError.checkNotNull(
                signature, 'Signature', 'signature'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
