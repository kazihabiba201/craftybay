import 'package:ecommerce/data/models/category_model.dart';
import 'package:ecommerce/data/models/network_response.dart';

import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  bool _getCategoriesInProgress = false;
  ProductModel _categoriesModel = ProductModel();
  String _message = '';

  ProductModel get categoryModel => _categoriesModel;

  bool get getCategoriesInProgress => _getCategoriesInProgress;
  String get message => _message;

  Future<bool> getCategories() async {
    _getCategoriesInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller().getRequest(Urls.getCategories);
    _getCategoriesInProgress = false;

    if (response.isSuccess) {
      _categoriesModel = ProductModel.fromJson(response.responseJson ?? {} );
      update();
      return true;
    }
    else
    {
      _message ='Category data fetch failed!';
      update();
      return false;
    }
  }
}
