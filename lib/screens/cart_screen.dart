import 'package:chopper/chopper.dart';
import 'package:enie_production/models/cart_list.dart';
import 'package:enie_production/screens/nav_bar.dart';
import 'package:enie_production/services/cart_service.dart';
import 'package:enie_production/widgets/cart_remove.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CartPage extends StatefulWidget {
  final int itemIdToCart; //pd_id
  final int itemValueCount; //count
  final itemImg; //image
  final userID;
  const CartPage(
      {Key key,
      this.itemIdToCart,
      this.itemValueCount,
      this.itemImg,
      this.userID})
      : super(key: key);
  @override
  CartPageState createState() => new CartPageState();
}

class CartPageState extends State<CartPage> {
  CartsService get service => GetIt.I<CartsService>();

  Response<List<CartList>> _apiResponse;
  bool _isLoading = false;

  get index => null;

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  void initState() {
    _fetchNotes();
    super.initState();
  }

  _fetchNotes() async {
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await service.getCartsList();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final total = Container(
    //   alignment: Alignment.center,
    //   child: Center(
    //     child: Container(
    //       alignment: Alignment.center,
    //       child: Text("cssa"),
    //     ),
    //   ),
    // );
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          backgroundColor: HexColor('#ffffff'),
          resizeToAvoidBottomInset: true, //remove warnning pixel
          appBar: AppBar(
            backgroundColor: HexColor('#36803a'),
            title: Text(
              "ตระกร้าสินค้า",
              style: GoogleFonts.kanit(),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBar()),
                );
              },
              child: Icon(
                Icons.arrow_back, // add custom icons also
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(children: <Widget>[
              Container(
                color: HexColor('#ededed'),
                height: MediaQuery.of(context).size.height /
                    1.3, // Also Including Tab-bar height.

                child: Container(
                  child: Builder(
                    builder: (_) {
                      if (_isLoading) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (!_apiResponse.isSuccessful) {
                        return Center(child: Text('An error occurred'));
                      }

                      return ListView.separated(
                        separatorBuilder: (_, __) =>
                            Divider(height: 1, color: HexColor('#ededed')),
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: ValueKey(_apiResponse.body[index].id),
                            direction: DismissDirection.startToEnd,
                            onDismissed: (direction) {},
                            confirmDismiss: (direction) async {
                              final result = await showDialog(
                                  context: context,
                                  builder: (_) => CartDelete());

                              if (result) {
                                final deleteResult = await service.deleteCart(
                                    _apiResponse.body[index].id.toString());
                                var message = '';

                                if (deleteResult != null &&
                                    deleteResult.isSuccessful) {
                                  message = 'The note was deleted successfully';
                                } else {
                                  message = 'An error occrued';
                                }
                                Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text(message),
                                    duration:
                                        new Duration(milliseconds: 1000)));

                                return deleteResult.isSuccessful;
                              }
                              print(result);
                              return result;
                            },
                            background: Container(
                              color: Colors.red,
                              padding: EdgeInsets.only(left: 16),
                              child: Align(
                                child: Icon(Icons.delete, color: Colors.white),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            child: Container(
                              child: Card(
                                  // child: ListTile(
                                  //   title: Text(
                                  //     'Product id' +
                                  //         _apiResponse.body[index].product_id
                                  //             .toString(),
                                  //     style: TextStyle(
                                  //         color: Theme.of(context).primaryColor),
                                  //   ),
                                  //   subtitle: Text('ราคา' +'   '+
                                  //       _apiResponse.body[index].product_price
                                  //           .toString()),
                                  //   onTap: () {},
                                  // ),
                                  child: ListTile(
                                leading: new Image.network(
                                  _apiResponse.body[index].product_img,
                                  fit: BoxFit.cover,
                                  width: 100.0,
                                ),

                                title: new Text(
                                  _apiResponse.body[index].product_name, //name
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text(
                                          'จำนวน' +
                                              ' ' +
                                              _apiResponse
                                                  .body[index].item_count
                                                  .toString(),
                                          style: new TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.normal)),
                                      new Text(
                                          'ราคา: ${_apiResponse.body[index].product_price}',
                                          style: new TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.normal)),
                                    ]),
                                //trailing: ,
                                // onTap: () {
                                //   _showSnackBar(context, _allCities[index]);
                                // },
                              )),
                            ),
                          );
                        },
                        itemCount: _apiResponse.body.length,
                      );
                    },
                  ),
                ),
              ),

              //TabBarView(children: [ImageList(),])
              Center(
                  child: Container(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    var addCart = new MaterialPageRoute(
                      builder: (BuildContext contex) =>
                          CartPage(itemImg: widget.itemImg),
                    );
                    Navigator.of(context).push(addCart);
                  },
                  child: Text(
                    "สั่งสินค้า",
                    style: GoogleFonts.kanit(color: Colors.white),
                  ),
                ),
              )),
            ]),
          ),
        ),
      ),
    );
  }
}
