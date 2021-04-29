// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartList _$CartListFromJson(Map<String, dynamic> json) {
  return CartList(
    id: json['id'] as int,
    userID: json['user_id'] as int,
    product_id: json['product_id'] as int
    // productPrice: (json['product_id'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CartListToJson(CartList instance) =>
 <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userID,
      'product_id': instance.product_id,
      // 'productPrice': instance.productPrice,
    };
