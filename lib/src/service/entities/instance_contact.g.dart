// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceContact _$$_InstanceContactFromJson(Map json) => $checkedCreate(
      r'_$_InstanceContact',
      json,
      ($checkedConvert) {
        final val = _$_InstanceContact(
          email: $checkedConvert('email', (v) => v as String),
          account: $checkedConvert('account',
              (v) => Account.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InstanceContactToJson(_$_InstanceContact instance) =>
    <String, dynamic>{
      'email': instance.email,
      'account': instance.account.toJson(),
    };
