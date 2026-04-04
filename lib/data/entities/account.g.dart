// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
    };
