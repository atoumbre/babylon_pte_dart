// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bad_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BadRequest extends BadRequest {
  @override
  final String status;
  @override
  final String reason;

  factory _$BadRequest([void Function(BadRequestBuilder)? updates]) =>
      (new BadRequestBuilder()..update(updates)).build();

  _$BadRequest._({required this.status, required this.reason}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'BadRequest', 'status');
    BuiltValueNullFieldError.checkNotNull(reason, 'BadRequest', 'reason');
  }

  @override
  BadRequest rebuild(void Function(BadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BadRequestBuilder toBuilder() => new BadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BadRequest &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), reason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BadRequest')
          ..add('status', status)
          ..add('reason', reason))
        .toString();
  }
}

class BadRequestBuilder implements Builder<BadRequest, BadRequestBuilder> {
  _$BadRequest? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  BadRequestBuilder() {
    BadRequest._defaults(this);
  }

  BadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BadRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BadRequest;
  }

  @override
  void update(void Function(BadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BadRequest build() {
    final _$result = _$v ??
        new _$BadRequest._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'BadRequest', 'status'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, 'BadRequest', 'reason'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
