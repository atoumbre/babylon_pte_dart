// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Receipt extends Receipt {
  @override
  final String transactionHash;
  @override
  final String status;
  @override
  final BuiltList<String> outputs;
  @override
  final BuiltList<String> logs;
  @override
  final BuiltList<String> newPackages;
  @override
  final BuiltList<String> newComponents;
  @override
  final BuiltList<String> newResources;

  factory _$Receipt([void Function(ReceiptBuilder)? updates]) =>
      (new ReceiptBuilder()..update(updates)).build();

  _$Receipt._(
      {required this.transactionHash,
      required this.status,
      required this.outputs,
      required this.logs,
      required this.newPackages,
      required this.newComponents,
      required this.newResources})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionHash, 'Receipt', 'transactionHash');
    BuiltValueNullFieldError.checkNotNull(status, 'Receipt', 'status');
    BuiltValueNullFieldError.checkNotNull(outputs, 'Receipt', 'outputs');
    BuiltValueNullFieldError.checkNotNull(logs, 'Receipt', 'logs');
    BuiltValueNullFieldError.checkNotNull(
        newPackages, 'Receipt', 'newPackages');
    BuiltValueNullFieldError.checkNotNull(
        newComponents, 'Receipt', 'newComponents');
    BuiltValueNullFieldError.checkNotNull(
        newResources, 'Receipt', 'newResources');
  }

  @override
  Receipt rebuild(void Function(ReceiptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptBuilder toBuilder() => new ReceiptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Receipt &&
        transactionHash == other.transactionHash &&
        status == other.status &&
        outputs == other.outputs &&
        logs == other.logs &&
        newPackages == other.newPackages &&
        newComponents == other.newComponents &&
        newResources == other.newResources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, transactionHash.hashCode), status.hashCode),
                        outputs.hashCode),
                    logs.hashCode),
                newPackages.hashCode),
            newComponents.hashCode),
        newResources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Receipt')
          ..add('transactionHash', transactionHash)
          ..add('status', status)
          ..add('outputs', outputs)
          ..add('logs', logs)
          ..add('newPackages', newPackages)
          ..add('newComponents', newComponents)
          ..add('newResources', newResources))
        .toString();
  }
}

class ReceiptBuilder implements Builder<Receipt, ReceiptBuilder> {
  _$Receipt? _$v;

  String? _transactionHash;
  String? get transactionHash => _$this._transactionHash;
  set transactionHash(String? transactionHash) =>
      _$this._transactionHash = transactionHash;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _outputs;
  ListBuilder<String> get outputs =>
      _$this._outputs ??= new ListBuilder<String>();
  set outputs(ListBuilder<String>? outputs) => _$this._outputs = outputs;

  ListBuilder<String>? _logs;
  ListBuilder<String> get logs => _$this._logs ??= new ListBuilder<String>();
  set logs(ListBuilder<String>? logs) => _$this._logs = logs;

  ListBuilder<String>? _newPackages;
  ListBuilder<String> get newPackages =>
      _$this._newPackages ??= new ListBuilder<String>();
  set newPackages(ListBuilder<String>? newPackages) =>
      _$this._newPackages = newPackages;

  ListBuilder<String>? _newComponents;
  ListBuilder<String> get newComponents =>
      _$this._newComponents ??= new ListBuilder<String>();
  set newComponents(ListBuilder<String>? newComponents) =>
      _$this._newComponents = newComponents;

  ListBuilder<String>? _newResources;
  ListBuilder<String> get newResources =>
      _$this._newResources ??= new ListBuilder<String>();
  set newResources(ListBuilder<String>? newResources) =>
      _$this._newResources = newResources;

  ReceiptBuilder() {
    Receipt._defaults(this);
  }

  ReceiptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionHash = $v.transactionHash;
      _status = $v.status;
      _outputs = $v.outputs.toBuilder();
      _logs = $v.logs.toBuilder();
      _newPackages = $v.newPackages.toBuilder();
      _newComponents = $v.newComponents.toBuilder();
      _newResources = $v.newResources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Receipt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Receipt;
  }

  @override
  void update(void Function(ReceiptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Receipt build() {
    _$Receipt _$result;
    try {
      _$result = _$v ??
          new _$Receipt._(
              transactionHash: BuiltValueNullFieldError.checkNotNull(
                  transactionHash, 'Receipt', 'transactionHash'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Receipt', 'status'),
              outputs: outputs.build(),
              logs: logs.build(),
              newPackages: newPackages.build(),
              newComponents: newComponents.build(),
              newResources: newResources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'outputs';
        outputs.build();
        _$failedField = 'logs';
        logs.build();
        _$failedField = 'newPackages';
        newPackages.build();
        _$failedField = 'newComponents';
        newComponents.build();
        _$failedField = 'newResources';
        newResources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Receipt', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
