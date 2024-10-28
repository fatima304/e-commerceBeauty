import 'package:json_annotation/json_annotation.dart';

part 'apis_error_model.g.dart';

@JsonSerializable()
class ApisErrorModel {
  @JsonKey(name: 'msgError')
  final String? message;
  final int? code;

  ApisErrorModel({required this.message, required this.code});

  factory ApisErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApisErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApisErrorModelToJson(this);
}