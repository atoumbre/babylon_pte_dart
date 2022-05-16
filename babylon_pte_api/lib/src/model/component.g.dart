// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Component extends Component {
  @override
  final ComponentBlueprint blueprint;
  @override
  final BuiltList<AccessRules> accessChecks;
  @override
  final String state;
  @override
  final BuiltList<OwnedResource> ownedResources;

  factory _$Component([void Function(ComponentBuilder)? updates]) =>
      (new ComponentBuilder()..update(updates)).build();

  _$Component._(
      {required this.blueprint,
      required this.accessChecks,
      required this.state,
      required this.ownedResources})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(blueprint, 'Component', 'blueprint');
    BuiltValueNullFieldError.checkNotNull(
        accessChecks, 'Component', 'accessChecks');
    BuiltValueNullFieldError.checkNotNull(state, 'Component', 'state');
    BuiltValueNullFieldError.checkNotNull(
        ownedResources, 'Component', 'ownedResources');
  }

  @override
  Component rebuild(void Function(ComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComponentBuilder toBuilder() => new ComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Component &&
        blueprint == other.blueprint &&
        accessChecks == other.accessChecks &&
        state == other.state &&
        ownedResources == other.ownedResources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, blueprint.hashCode), accessChecks.hashCode),
            state.hashCode),
        ownedResources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Component')
          ..add('blueprint', blueprint)
          ..add('accessChecks', accessChecks)
          ..add('state', state)
          ..add('ownedResources', ownedResources))
        .toString();
  }
}

class ComponentBuilder implements Builder<Component, ComponentBuilder> {
  _$Component? _$v;

  ComponentBlueprintBuilder? _blueprint;
  ComponentBlueprintBuilder get blueprint =>
      _$this._blueprint ??= new ComponentBlueprintBuilder();
  set blueprint(ComponentBlueprintBuilder? blueprint) =>
      _$this._blueprint = blueprint;

  ListBuilder<AccessRules>? _accessChecks;
  ListBuilder<AccessRules> get accessChecks =>
      _$this._accessChecks ??= new ListBuilder<AccessRules>();
  set accessChecks(ListBuilder<AccessRules>? accessChecks) =>
      _$this._accessChecks = accessChecks;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  ListBuilder<OwnedResource>? _ownedResources;
  ListBuilder<OwnedResource> get ownedResources =>
      _$this._ownedResources ??= new ListBuilder<OwnedResource>();
  set ownedResources(ListBuilder<OwnedResource>? ownedResources) =>
      _$this._ownedResources = ownedResources;

  ComponentBuilder() {
    Component._defaults(this);
  }

  ComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blueprint = $v.blueprint.toBuilder();
      _accessChecks = $v.accessChecks.toBuilder();
      _state = $v.state;
      _ownedResources = $v.ownedResources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Component other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Component;
  }

  @override
  void update(void Function(ComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Component build() {
    _$Component _$result;
    try {
      _$result = _$v ??
          new _$Component._(
              blueprint: blueprint.build(),
              accessChecks: accessChecks.build(),
              state: BuiltValueNullFieldError.checkNotNull(
                  state, 'Component', 'state'),
              ownedResources: ownedResources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blueprint';
        blueprint.build();
        _$failedField = 'accessChecks';
        accessChecks.build();

        _$failedField = 'ownedResources';
        ownedResources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Component', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
