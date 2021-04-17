import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_screen.dart';

// ignore: must_be_immutable
class ProductTile extends StatelessWidget {
  Product product;
  ProductTile(this.product);
  final itemCount = 1;
  int count = 0;
 

  @override
  Widget build(BuildContext context) {
    final addCartBtn = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        Text('$itemCount'),
        IconButton(
          icon: Icon(
            Icons.add_box,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.add_shopping_cart,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
      ],
    );
    return GestureDetector(
      onTap: () {
                
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => GetItem(
                    itemId: product.id,
                    itemName:product.pdNameTh,
                    
                  ),
                );
                Navigator.of(context).push(homeRounte);
              },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // if (product.pdMainImage == null)
                  Container(
                    height: 190,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.network(
                      product.pdMainImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Obx(() => CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: product.isFavorite.value
                                ? Icon(Icons.favorite_rounded)
                                : Icon(Icons.favorite_border),
                            onPressed: () {
                              product.isFavorite.toggle();
                            },
                          ),
                        )),
                  )
                ],
              ),
              SizedBox(height: 8),
              Text(
                product.pdNameTh,
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'avenir', fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              if (product.isBlank != null)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '  ${product.pdPriceSalon}' + ' บาท  ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  // child: addCartBtn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
