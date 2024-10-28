// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beauty_product_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeautyProductModelResponse _$BeautyProductModelResponseFromJson(
        Map<String, dynamic> json) =>
    BeautyProductModelResponse(
      id: (json['id'] as num).toInt(),
      brand: json['brand'] as String,
      name: json['name'] as String,
      price: json['price'] as String?,
      imageLink: json['image_link'] as String?,
      productLink: json['product_link'] as String?,
      description: json['description'] as String?,
      productType: json['product_type'] as String?,
      productColors: (json['product_colors'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ProductColors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BeautyProductModelResponseToJson(
        BeautyProductModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'price': instance.price,
      'image_link': instance.imageLink,
      'product_link': instance.productLink,
      'description': instance.description,
      'product_type': instance.productType,
      'product_colors': instance.productColors,
    };

ProductColors _$ProductColorsFromJson(Map<String, dynamic> json) =>
    ProductColors(
      hexValue: json['hex_value'] as String?,
      colorName: json['colour_name'] as String?,
    );

Map<String, dynamic> _$ProductColorsToJson(ProductColors instance) =>
    <String, dynamic>{
      'hex_value': instance.hexValue,
      'colour_name': instance.colorName,
    };
