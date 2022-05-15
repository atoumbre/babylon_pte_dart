//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:babylon_pte_api/src/model/method_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_rules.g.dart';

/// AccessRules
///
/// Properties:
/// * [defaultRule] 
/// * [methodRules] 
abstract class AccessRules implements Built<AccessRules, AccessRulesBuilder> {
    @BuiltValueField(wireName: r'default_rule')
    String get defaultRule;

    @BuiltValueField(wireName: r'method_rules')
    BuiltList<MethodRule> get methodRules;

    AccessRules._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccessRulesBuilder b) => b;

    factory AccessRules([void updates(AccessRulesBuilder b)]) = _$AccessRules;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccessRules> get serializer => _$AccessRulesSerializer();
}

class _$AccessRulesSerializer implements StructuredSerializer<AccessRules> {
    @override
    final Iterable<Type> types = const [AccessRules, _$AccessRules];

    @override
    final String wireName = r'AccessRules';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccessRules object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'default_rule')
            ..add(serializers.serialize(object.defaultRule,
                specifiedType: const FullType(String)));
        result
            ..add(r'method_rules')
            ..add(serializers.serialize(object.methodRules,
                specifiedType: const FullType(BuiltList, [FullType(MethodRule)])));
        return result;
    }

    @override
    AccessRules deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccessRulesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'default_rule':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.defaultRule = valueDes;
                    break;
                case r'method_rules':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(MethodRule)])) as BuiltList<MethodRule>;
                    result.methodRules.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

