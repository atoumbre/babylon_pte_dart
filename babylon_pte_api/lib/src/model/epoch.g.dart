// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epoch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Epoch extends Epoch {
  @override
  final int epoch;

  factory _$Epoch([void Function(EpochBuilder)? updates]) =>
      (new EpochBuilder()..update(updates)).build();

  _$Epoch._({required this.epoch}) : super._() {
    BuiltValueNullFieldError.checkNotNull(epoch, 'Epoch', 'epoch');
  }

  @override
  Epoch rebuild(void Function(EpochBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpochBuilder toBuilder() => new EpochBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Epoch && epoch == other.epoch;
  }

  @override
  int get hashCode {
    return $jf($jc(0, epoch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Epoch')..add('epoch', epoch))
        .toString();
  }
}

class EpochBuilder implements Builder<Epoch, EpochBuilder> {
  _$Epoch? _$v;

  int? _epoch;
  int? get epoch => _$this._epoch;
  set epoch(int? epoch) => _$this._epoch = epoch;

  EpochBuilder() {
    Epoch._defaults(this);
  }

  EpochBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _epoch = $v.epoch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Epoch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Epoch;
  }

  @override
  void update(void Function(EpochBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Epoch build() {
    final _$result = _$v ??
        new _$Epoch._(
            epoch:
                BuiltValueNullFieldError.checkNotNull(epoch, 'Epoch', 'epoch'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
