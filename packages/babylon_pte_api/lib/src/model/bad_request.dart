//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bad_request.g.dart';

/// BadRequest
///
/// Properties:
/// * [status] 
/// * [reason] 
abstract class BadRequest implements Built<BadRequest, BadRequestBuilder> {
    @BuiltValueField(wireName: r'status')
    String get status;

    @BuiltValueField(wireName: r'reason')
    String get reason;

    BadRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BadRequestBuilder b) => b;

    factory BadRequest([void updates(BadRequestBuilder b)]) = _$BadRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<BadRequest> get serializer => _$BadRequestSerializer();
}

class _$BadRequestSerializer implements StructuredSerializer<BadRequest> {
    @override
    final Iterable<Type> types = const [BadRequest, _$BadRequest];

    @override
    final String wireName = r'BadRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, BadRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(String)));
        result
            ..add(r'reason')
            ..add(serializers.serialize(object.reason,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    BadRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BadRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'reason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.reason = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

