// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_rules.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessRules extends AccessRules {
  @override
  final String defaultRule;
  @override
  final BuiltList<MethodRule> methodRules;

  factory _$AccessRules([void Function(AccessRulesBuilder)? updates]) =>
      (new AccessRulesBuilder()..update(updates)).build();

  _$AccessRules._({required this.defaultRule, required this.methodRules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultRule, 'AccessRules', 'defaultRule');
    BuiltValueNullFieldError.checkNotNull(
        methodRules, 'AccessRules', 'methodRules');
  }

  @override
  AccessRules rebuild(void Function(AccessRulesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessRulesBuilder toBuilder() => new AccessRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRules &&
        defaultRule == other.defaultRule &&
        methodRules == other.methodRules;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, defaultRule.hashCode), methodRules.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccessRules')
          ..add('defaultRule', defaultRule)
          ..add('methodRules', methodRules))
        .toString();
  }
}

class AccessRulesBuilder implements Builder<AccessRules, AccessRulesBuilder> {
  _$AccessRules? _$v;

  String? _defaultRule;
  String? get defaultRule => _$this._defaultRule;
  set defaultRule(String? defaultRule) => _$this._defaultRule = defaultRule;

  ListBuilder<MethodRule>? _methodRules;
  ListBuilder<MethodRule> get methodRules =>
      _$this._methodRules ??= new ListBuilder<MethodRule>();
  set methodRules(ListBuilder<MethodRule>? methodRules) =>
      _$this._methodRules = methodRules;

  AccessRulesBuilder() {
    AccessRules._defaults(this);
  }

  AccessRulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultRule = $v.defaultRule;
      _methodRules = $v.methodRules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessRules;
  }

  @override
  void update(void Function(AccessRulesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccessRules build() {
    _$AccessRules _$result;
    try {
      _$result = _$v ??
          new _$AccessRules._(
              defaultRule: BuiltValueNullFieldError.checkNotNull(
                  defaultRule, 'AccessRules', 'defaultRule'),
              methodRules: methodRules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'methodRules';
        methodRules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccessRules', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
