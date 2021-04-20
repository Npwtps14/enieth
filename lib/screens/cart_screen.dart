import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CartPage extends StatefulWidget {
  final int itemIdToCart ;
  final int itemValueCount ;

  const CartPage({Key key, this.itemIdToCart , this.itemValueCount}) : super(key: key);
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
            title: Text('ตระกร้า',style: GoogleFonts.kanit(),),
            backgroundColor: HexColor('#36803a'),
          ),
          body: SingleChildScrollView(
            // child: Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         child: new Text('สินค้าทั้งหมด'),
            //       ),
            //       Text('1'+'ชิ้น'),
            //     ],
            //   ),
            // ),
            child: Text(widget.itemIdToCart.toString()+widget.itemValueCount.toString()),
          ),
        ));
  }
}
