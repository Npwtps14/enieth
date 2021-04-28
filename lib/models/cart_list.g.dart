// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartList _$CartListFromJson(Map<String, dynamic> json) {
  return CartList(
    id: json['id'] as int,
    userID: json['userID'] as int,
    productID: json['productID'] as int,
    productPrice: (json['productPrice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CartListToJson(CartList instance) => <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'productID': instance.productID,
      'productPrice': instance.productPrice,
    };
