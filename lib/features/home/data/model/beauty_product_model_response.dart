import 'package:json_annotation/json_annotation.dart';

part 'beauty_product_model_response.g.dart';

@JsonSerializable()
class BeautyProductModelResponse {
  final int id;

  final String brand;

  final String name;

  final String? price;

  @JsonKey(name: 'image_link')
  final String? imageLink;

  @JsonKey(name: 'product_link')
  final String? productLink;

  final String? description;

  @JsonKey(name: 'product_type')
  final String? productType;

  @JsonKey(name: 'product_colors')
  final List<ProductColors?>? productColors;

  BeautyProductModelResponse({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.imageLink,
    required this.productLink,
    required this.description,
    required this.productType,
    required this.productColors,
  });

  Map<String, dynamic> toJson() => _$BeautyProductModelResponseToJson(this);

  factory BeautyProductModelResponse.fromJson(Map<String, dynamic> json) =>
      _$BeautyProductModelResponseFromJson(json);
}

@JsonSerializable()
class ProductColors {
  @JsonKey(name: 'hex_value')
  final String? hexValue;

  @JsonKey(name: 'colour_name')
  final String? colorName;

  ProductColors({
    required this.hexValue,
    required this.colorName,
  });

  Map<String, dynamic> toJson() => _$ProductColorsToJson(this);

  factory ProductColors.fromJson(Map<String, dynamic> json) =>
      _$ProductColorsFromJson(json);
}
