import 'dart:convert';
import 'package:get/get.dart';

// List<Product> productFromJson(String str) =>
//     List<Product>.from(json.decode(str).json((x) => Product.fromJSON(x)));

// String productToJson(List<Product> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJSON())));
List<Product> productFromJson(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

class Product {
  final int id;
  final int pdBest;
  final String pdCapacity;
  final String pdCode;
  final int pdCom;
  final int pdCost;
  final String pdDetail;
  final int pdFlash;
  final int pdHot;
  final String pdHowToUse;
  final String pdMainImage;
  final int pdMtStatus;
  final String pdNameEn;
  final String pdNameTh;
  final int pdPriceSales;
  final int pdPriceSalon;
  final int pdPriceWeb;
  final int pdQty;
  final String pdSku;
  final int pdStatus;
  final String pdUnit;
  final int pdVatStatus;
  final int productBrandId;
  final int productCategoryId;
  final int productGroupId;
  final int productOwnerId;
  final int productSeriesId;
  var isFavorite = false.obs;

  Product({
    this.id,
    this.pdBest,
    this.pdCapacity,
    this.pdCode,
    this.pdCom,
    this.pdCost,
    this.pdDetail,
    this.pdFlash,
    this.pdHot,
    this.pdHowToUse,
    this.pdMainImage,
    this.pdMtStatus,
    this.pdNameEn,
    this.pdNameTh,
    this.pdPriceSales,
    this.pdPriceSalon,
    this.pdPriceWeb,
    this.pdQty,
    this.pdSku,
    this.pdStatus,
    this.pdUnit,
    this.pdVatStatus,
    this.productBrandId,
    this.productCategoryId,
    this.productGroupId,
    this.productOwnerId,
    this.productSeriesId,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"] as int,
      pdBest: json["pd_best"] as int,
      pdCapacity:
          json["pd_capacity"] == null ? null : json["pd_capacity"] as String,
      pdCode: json["pd_code"] == null ? null : json["pd_code"] as String,
      pdCom: json["pd_com"] as int,
      pdCost: json["pd_cost"] as int,
      pdDetail: json["pd_detail"] == null ? null : json["pd_detail"],
      pdFlash: json["pd_flash"] as int,
      pdHot: json["pd_hot"] as int,
      pdHowToUse: json["pd_how_to_use"] == null ? null : json["pd_how_to_use"],
      pdMainImage: json["pd_main_image"] ??=
          'https://firebasestorage.googleapis.com/v0/b/enie-89c82.appspot.com/o/itemProduct%2Fimage-not-available.jpeg?alt=media&token=c652c858-2f61-47b0-8e54-60d077390ce5',
      pdMtStatus: json["pd_mt_status"] as int,
      pdNameEn: json["pd_name_en"] == null ? null : json["pd_name_en"],
      pdNameTh: json["pd_name_th"] as String,
      pdPriceSales: json["pd_price_sales"] as int,
      pdPriceSalon: json["pd_price_salon"] as int,
      pdPriceWeb: json["pd_price_web"] as int,
      pdQty: json["pd_qty"] as int,
      pdStatus: json["pd_status"] as int,
      pdUnit: json["pd_unit"] as String,
      pdVatStatus: json["pd_vat_status"] as int,
      productBrandId: json["product_brand_id"] as int,
      productCategoryId: json["product_category_id"] as int,
      productGroupId: json["product_group_id"] as int,
      productOwnerId: json["product_owner_id"] as int,
      productSeriesId: json["product_series_id"] as int,
    );
  }

  // Map<String, dynamic> toJSON() => {
  //       "id": id,
  //       "pd_best": pdBest,
  //       "pd_capacity": pdCapacity == null ? null : pdCapacity,
  //       "pd_code": pdCode == null ? null : pdCode,
  //       "pd_com": pdCom,
  //       "pd_cost": pdCost,
  //       "pd_detail": pdDetail == null ? null : pdDetail,
  //       "pd_flash": pdFlash,
  //       "pd_hot": pdHot,
  //       "pd_how_to_use": pdHowToUse == null ? null : pdHowToUse,
  //       "pd_main_image": pdMainImage,
  //       "pd_mt_status": pdMtStatus,
  //       "pd_name_en": pdNameEn == null ? null : pdNameEn,
  //       "pd_name_th": pdNameTh,
  //       "pd_price_sales": pdPriceSales,
  //       "pd_price_salon": pdPriceSalon,
  //       "pd_price_web": pdPriceWeb,
  //       "pd_qty": pdQty,
  //       "pd_recommend": pdRecommend,
  //       "pd_seq": pdSeq == null ? null : pdSeq,
  //       "pd_show_sales": pdShowSales,
  //       "pd_show_salon": pdShowSalon,
  //       "pd_show_web": pdShowWeb,
  //       "pd_sku": pdSku == null ? null : pdSku,
  //       "pd_status": pdStatus,
  //       "pd_unit": pdUnit,
  //       "pd_vat_status": pdVatStatus,
  //       "product_brand_id": productBrandId,
  //       "product_category_id": productCategoryId,
  //       "product_group_id": productGroupId,
  //       "product_owner_id": productOwnerId,
  //       "product_series_id": productSeriesId,
  //     };
}
