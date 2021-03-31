import 'package:enie_production/models/product.dart';
import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:async';

class ProductsService {
   static Future<List<Product>> fetchProducts() async {
    var dio = Dio();
    var categoryID = '27';
            var response = await dio.get('https://api.enie.co.th/api/products?categoryID=$categoryID');
        if (response.statusCode == 200) {
          // print(response.data);
          return (response.data as List).map((x) => Product.fromJson(x)).toList();
        } else {
          //show error message
          return null;
        }
      }
    }
    
    
// ?categoryID=$categoryID