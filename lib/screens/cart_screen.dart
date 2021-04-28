import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CartPage extends StatefulWidget {
  final int itemIdToCart; //pd_id
  final int itemValueCount; //count
  final itemImg; //image
  final userID;
  const CartPage(
      {Key key, this.itemIdToCart, this.itemValueCount, this.itemImg, this.userID} )
      : super(key: key);
  @override
  CartPageState createState() => new CartPageState();
}

class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => true);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true, //remove warnning pixel
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('ตระกร้า', style: GoogleFonts.kanit()),
          backgroundColor: HexColor('#36803a'),
        ),
        body: SingleChildScrollView(
          child: Text(widget.itemIdToCart.toString() +
              '  ' +
              widget.itemImg.toString()),
          // child: Container(
          //   child: Image.network(widget.itemImg),
        ),
      ),
    );
  }
}
