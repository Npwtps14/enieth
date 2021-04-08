import 'package:dio/dio.dart';
import 'package:enie_production/controllers/productcontroller.dart';
import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/cart_screen.dart';
import 'package:enie_production/screens/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/subjects.dart';

// class Getcate extends StatefulWidget {
//   @override
//   ProductsPageState createState() => new ProductsPageState();
//   var  cateId = null  ;
//   Getcate({Key key, String cateId,  }) : super(key: key);
// }


class ProductsPage extends StatefulWidget {
  
  
  @override
  ProductsPageState createState() => new ProductsPageState();
    final String cate;
    final String cateId = "";
    ProductsPage({Key key, this.cate = "test", String cateId ,  }) : super(key: key);
  }
  
class ProductsPageState extends State<ProductsPage> {
  @override
  final ProductController productController = Get.put(ProductController());

  // final ProductsPage productsPage = ProductsPage().cateId;

  static get cateId => ProductsPage().cateId;
  
    static Future<List<Product>> fetchProducts() async {
      @override
      var dio = Dio();
      var id = cateId ;
     
      // id.widget.cateId;
  
      var response = await dio
          // ignore: unnecessary_brace_in_string_interps
          .get('https://api.enie.co.th/api/products?categoryID=$id');
      if (response.statusCode == 200) {
        print('${id}');
        return (response.data as List).map((x) => Product.fromJson(x)).toList();
      } else {
        //show error message
        return null;
      }
    }
  
    Widget build(BuildContext context) {
      // TODO: implement build
  
      return WillPopScope(
          onWillPop: () {
            return new Future(() => true);
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false, //remove warnning pixel
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Text('สินค้า'),
              backgroundColor: HexColor('#36803a'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: new Text(
                          "${widget.cate}",
                          style: GoogleFonts.kanit(
                              fontSize: 32, fontWeight: FontWeight.w400),
                        ),
                      ),
                      IconButton(
                          icon: LineIcon(LineIcons.shoppingCart),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CartPage()),
                            );
                          }),
                    ],
                  ),
                ),
                Expanded(
                  child: Obx(() {
                    if (productController.isLoading.value)
                      return Center(child: CircularProgressIndicator());
                    else
                      return StaggeredGridView.countBuilder(
                        crossAxisCount: 2,
                        itemCount: productController.productList.length,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        itemBuilder: (context, index) {
                          return ProductTile(
                              productController.productList[index]);
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      );
                  }),
                )
              ],
            ),
          ));
    }
  }
  
  
