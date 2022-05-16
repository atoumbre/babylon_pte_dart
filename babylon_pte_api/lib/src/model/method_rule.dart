//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'method_rule.g.dart';

/// MethodRule
///
/// Properties:
/// * [name] 
/// * [rule] 
abstract class MethodRule implements Built<MethodRule, MethodRuleBuilder> {
    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'rule')
    String get rule;

    MethodRule._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MethodRuleBuilder b) => b;

    factory MethodRule([void updates(MethodRuleBuilder b)]) = _$MethodRule;

    @BuiltValueSerializer(custom: true)
    static Serializer<MethodRule> get serializer => _$MethodRuleSerializer();
}

class _$MethodRuleSerializer implements StructuredSerializer<MethodRule> {
    @override
    final Iterable<Type> types = const [MethodRule, _$MethodRule];

    @override
    final String wireName = r'MethodRule';

    @override
    Iterable<Object?> serialize(Serializers serializers, MethodRule object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'rule')
            ..add(serializers.serialize(object.rule,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    MethodRule deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MethodRuleBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'rule':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.rule = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

