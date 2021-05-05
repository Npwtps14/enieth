// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartList _$CartListFromJson(Map<String, dynamic> json) {
  return CartList(
    id: json['id'] as int,
    user_id: json['user_id'] as int,
    product_id: json['product_id'] as int,
    item_count: json['item_count'] as int,
    status: json['status'] as int,
    product_price: (json['product_price'] as num)?.toDouble(),
    product_img: json['product_img'] as String,
    discount_id: json['discount_id'] as int,
    discount_amount: json['discount_amount'] as int,
    product_name: json['product_name'] as String,
  );
}

Map<String, dynamic> _$CartListToJson(CartList instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'product_id': instance.product_id,
      'item_count': instance.item_count,
      'status': instance.status,
      'discount_id': instance.discount_id,
      'discount_amount': instance.discount_amount,
      'product_price': instance.product_price,
      'product_img': instance.product_img,
      'product_name': instance.product_name,
    };
