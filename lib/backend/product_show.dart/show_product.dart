
import 'package:get/get.dart';
import 'package:kisukinen/backend/Mongodb/connection.dart';
import 'package:kisukinen/backend/product_show.dart/product.dart';
import 'package:kisukinen/components/popups/snackbar.dart';

final ConnectDatabase dbController = Get.find<ConnectDatabase>();

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      var collection = dbController.db.collection('products');
      var products = await collection.find().toList();
      List<Product> productListTemp = [];

      for (var productJson in products) {
        var product = Product.fromJson(productJson);
        productListTemp.add(product);
      }

      productList.value = productListTemp;
    } catch (e) {
      Snackbar.errorSnackbar(
          title: "Error", message: "Failed to fetch products: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
