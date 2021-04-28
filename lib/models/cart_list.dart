import 'package:json_annotation/json_annotation.dart';
import 'dart:ui';
part 'cart_list.g.dart';

@JsonSerializable()
class CartList {
  int id ;
  int userID ;
  int productID ;
  double productPrice ;


  CartList({  this.id, this.userID, this.productID, this.productPrice});
  static const fromJson = _$CartListFromJson;

//   // static const fromJson = _$CartListFromJson;
//   factory CartList.fromJson(Map<String, dynamic> json) {
//   return CartList(
//     id: json['id'],
//     userID: json['user_id'],
//     productID: json['product_id'],
//     // itemCount: json["item_count"],
//     // status: json["status"],
//     productPrice: json['product_price'],
//     // productImg: json["product_img"],
//     // createdAt: json["createdAt"],
//     // updatedAt: json["updatedAt"],
//   );
// }
}
