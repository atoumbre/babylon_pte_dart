// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodRule extends MethodRule {
  @override
  final String name;
  @override
  final String rule;

  factory _$MethodRule([void Function(MethodRuleBuilder)? updates]) =>
      (new MethodRuleBuilder()..update(updates)).build();

  _$MethodRule._({required this.name, required this.rule}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'MethodRule', 'name');
    BuiltValueNullFieldError.checkNotNull(rule, 'MethodRule', 'rule');
  }

  @override
  MethodRule rebuild(void Function(MethodRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodRuleBuilder toBuilder() => new MethodRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodRule && name == other.name && rule == other.rule;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), rule.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MethodRule')
          ..add('name', name)
          ..add('rule', rule))
        .toString();
  }
}

class MethodRuleBuilder implements Builder<MethodRule, MethodRuleBuilder> {
  _$MethodRule? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _rule;
  String? get rule => _$this._rule;
  set rule(String? rule) => _$this._rule = rule;

  MethodRuleBuilder() {
    MethodRule._defaults(this);
  }

  MethodRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _rule = $v.rule;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MethodRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodRule;
  }

  @override
  void update(void Function(MethodRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MethodRule build() {
    final _$result = _$v ??
        new _$MethodRule._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'MethodRule', 'name'),
            rule: BuiltValueNullFieldError.checkNotNull(
                rule, 'MethodRule', 'rule'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
