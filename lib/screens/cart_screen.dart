import 'package:chopper/chopper.dart';
import 'package:enie_production/models/cart_list.dart';
import 'package:enie_production/services/cart_service.dart';
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
          body: Builder(
            builder: (_) {
              if (_isLoading) {
                return Center(child: CircularProgressIndicator());
              }

              if (!_apiResponse.isSuccessful) {
                return Center(child: Text('An error occurred'));
              }

              return ListView.separated(
                separatorBuilder: (_, __) =>
                    Divider(height: 1, color: Colors.white),
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: ValueKey(_apiResponse.body[index].id),
                    direction: DismissDirection.startToEnd,
                    onDismissed: (direction) {},
                    // confirmDismiss: (direction) async {
                    //   final result = await showDialog(context: context, builder: (_) => NoteDelete());

                    //   if (result) {
                    //     final deleteResult = await service.deleteNote(_apiResponse.body[index].id.toString());
                    //     var message = '';

                    //     if (deleteResult != null && deleteResult.isSuccessful) {
                    //       message = 'The note was deleted successfully';
                    //     } else {
                    //       message = 'An error occrued';
                    //     }
                    //     Scaffold.of(context).showSnackBar(SnackBar(content: Text(message),duration: new Duration(milliseconds: 1000)));

                    //     return deleteResult.isSuccessful;
                    //   }
                    //   print(result);
                    //   return result;
                    // },
                    background: Container(
                      color: Colors.red,
                      padding: EdgeInsets.only(left: 16),
                      child: Align(
                        child: Icon(Icons.delete, color: Colors.white),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        _apiResponse.body[index].product_id.toString(),
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      subtitle: Text(
                          // 'Last edited on ${formatDateTime(_apiResponse.body[index].product_id ?? _apiResponse.body[index].product_price)}'),
                          'Last edited on '),
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (_) => NoteModify(
                        //         noteID: _apiResponse.body[index].user_id.toString()))).then((data) {
                        //           _fetchNotes();
                        //         });
                      },
                    ),
                  );
                },
                itemCount: _apiResponse.body.length,
              );
            },
          )),
    );
  }
}
