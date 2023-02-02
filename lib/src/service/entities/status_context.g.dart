// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'status_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusesContext _$$_StatusesContextFromJson(Map json) => $checkedCreate(
      r'_$_StatusesContext',
      json,
      ($checkedConvert) {
        final val = _$_StatusesContext(
          ancestors: $checkedConvert(
              'ancestors',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Status.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          descendants: $checkedConvert(
              'descendants',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Status.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_StatusesContextToJson(_$_StatusesContext instance) =>
    <String, dynamic>{
      'ancestors': instance.ancestors.map((e) => e.toJson()).toList(),
      'descendants': instance.descendants.map((e) => e.toJson()).toList(),
    };
