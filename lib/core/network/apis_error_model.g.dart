// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApisErrorModel _$ApisErrorModelFromJson(Map<String, dynamic> json) =>
    ApisErrorModel(
      message: json['msgError'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApisErrorModelToJson(ApisErrorModel instance) =>
    <String, dynamic>{
      'msgError': instance.message,
      'code': instance.code,
    };
