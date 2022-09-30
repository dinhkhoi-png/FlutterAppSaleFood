
import 'package:flutter_app_sale/data/controller/cart_controller.dart';
import 'package:flutter_app_sale/data/repository/popular_product_repo.dart';
import 'package:flutter_app_sale/models/products_model.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:get/get.dart';

import '../../models/cart_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;

  int get inCarItems => _inCartItems + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product
          .fromJson(response.body)
          .products);

      _isLoaded = true;
      update();

    } else {

    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar("Product Count", "You cannot reduce more !",
        backgroundColor: AppColors.mainColor,
      );
      if(_inCartItems>0){
        _quantity =- _inCartItems;
        return _quantity;
      }
      return 0;
    }
    else if ((_inCartItems + quantity) > 30) {
      Get.snackbar("Product Count", "You cannot reduce more !",
        backgroundColor: AppColors.mainColor,
      );
      return 30;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.exitsInCart(product);

    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
    // lay du lieu tu soge _inCart

  }

  void addItem(ProductModel product) {
    // if(quantity > 0) {
    _cart.addItem(product, quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product);
    _cart.items.forEach((key, value) {

    });

    // }else{
    //   Get.snackbar("Product Count", "You need add an item !",
    //     backgroundColor: AppColors.mainColor,
    //   );
    // }
    update();
  }

  int get totalItems{
    return _cart.totalItems;
  }
  List<CartModel> get getItems{
    return _cart.getItems;
  }
}