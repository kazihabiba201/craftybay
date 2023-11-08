import 'package:ecommerce/data/models/network_response.dart';
import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class CreateWishListController extends GetxController {
  String _message = '';

  String get message => _message;

  bool get createWishListInProgress => _createWishListInProgress;
  bool _createWishListInProgress = false;

  Future<bool> createWishList(int id) async {
    _createWishListInProgress = true;
    update();

    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.createWishListItem(id));
    if (response.isSuccess) {
      return true;
    } else {
      _message = 'Create wish list failed! Try again';
      return false;
    }
  }
}
