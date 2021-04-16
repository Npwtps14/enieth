import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:enie_production/screens/category/category_27.dart';
import 'package:get/state_manager.dart';

class CateId27Controller extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productList = List<Product>().obs;

  @override
  void onInit() {
    fetchCate27();
    super.onInit();
  }

  void fetchCate27() async {
    try {
      isLoading(true);
      var products = await Cate27State.fetchCate27();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
