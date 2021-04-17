import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class GetItem extends StatefulWidget {
  final itemName;
  final int itemId;
  const GetItem({int this.itemId, String this.itemName});
  @override
  ProductDetailPageState createState() => new ProductDetailPageState();
}

// class ProductDetailPage extends State<GetItem> {
//   @override
//   ProductDetailPageState createState() => ProductDetailPageState();

// }
class ProductDetailPageState extends State<GetItem> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return new Future(() => true);
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false, //remove warnning pixel
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('รายละเอียดสินค้า'),
            backgroundColor: HexColor('#36803a'),
          ),
        ));
  }
}
