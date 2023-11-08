import 'dart:developer';

import 'package:ecommerce/data/models/network_response.dart';
import 'package:ecommerce/data/models/wish_list_model.dart';
import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class WishListController extends GetxController {
  bool _getWishListInProgress = false;
  String _message = '';

  WishListModel _wishListModel = WishListModel();

  bool get getWishListInProgress => _getWishListInProgress;

  String get message => _message;

  WishListModel get wishListModel => _wishListModel;

  Future<bool> getWishList() async {
    _getWishListInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.getWishList);

    _getWishListInProgress = false;
    update();
    if (response.isSuccess) {
      _wishListModel = WishListModel.fromJson(response.responseJson!);
      // _wishListModel = WishListModel.fromJson(response.responseJson ?? {});
      update();
      log(_wishListModel.toString());
      return true;
    } else {
      _message = 'GetWishList failed! Try again';
      return false;
    }
  }
}
