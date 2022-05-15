// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Transaction extends Transaction {
  @override
  final String manifest;
  @override
  final Nonce nonce;
  @override
  final BuiltList<Signature> signatures;

  factory _$Transaction([void Function(TransactionBuilder)? updates]) =>
      (new TransactionBuilder()..update(updates)).build();

  _$Transaction._(
      {required this.manifest, required this.nonce, required this.signatures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(manifest, 'Transaction', 'manifest');
    BuiltValueNullFieldError.checkNotNull(nonce, 'Transaction', 'nonce');
    BuiltValueNullFieldError.checkNotNull(
        signatures, 'Transaction', 'signatures');
  }

  @override
  Transaction rebuild(void Function(TransactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionBuilder toBuilder() => new TransactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transaction &&
        manifest == other.manifest &&
        nonce == other.nonce &&
        signatures == other.signatures;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, manifest.hashCode), nonce.hashCode), signatures.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Transaction')
          ..add('manifest', manifest)
          ..add('nonce', nonce)
          ..add('signatures', signatures))
        .toString();
  }
}

class TransactionBuilder implements Builder<Transaction, TransactionBuilder> {
  _$Transaction? _$v;

  String? _manifest;
  String? get manifest => _$this._manifest;
  set manifest(String? manifest) => _$this._manifest = manifest;

  NonceBuilder? _nonce;
  NonceBuilder get nonce => _$this._nonce ??= new NonceBuilder();
  set nonce(NonceBuilder? nonce) => _$this._nonce = nonce;

  ListBuilder<Signature>? _signatures;
  ListBuilder<Signature> get signatures =>
      _$this._signatures ??= new ListBuilder<Signature>();
  set signatures(ListBuilder<Signature>? signatures) =>
      _$this._signatures = signatures;

  TransactionBuilder() {
    Transaction._defaults(this);
  }

  TransactionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manifest = $v.manifest;
      _nonce = $v.nonce.toBuilder();
      _signatures = $v.signatures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Transaction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Transaction;
  }

  @override
  void update(void Function(TransactionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Transaction build() {
    _$Transaction _$result;
    try {
      _$result = _$v ??
          new _$Transaction._(
              manifest: BuiltValueNullFieldError.checkNotNull(
                  manifest, 'Transaction', 'manifest'),
              nonce: nonce.build(),
              signatures: signatures.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nonce';
        nonce.build();
        _$failedField = 'signatures';
        signatures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Transaction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
