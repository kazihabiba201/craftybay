
import 'dart:developer';

import 'package:ecommerce/data/models/network_response.dart';
import 'package:ecommerce/data/models/product_review_model.dart';
import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class GetProductReviewController extends GetxController {
  bool _productReviewInProgress = false;
  String _message = '';
  ProductReviewModel _getProductReviewModel = ProductReviewModel();
  bool get productReviewInProgress => _productReviewInProgress;

  String get message => _message;
  ProductReviewModel get getProductReviewModel => _getProductReviewModel;
  Future<bool> getProductReview(int id) async {
    _productReviewInProgress = true;
    update();
    final NetworkResponse response =
    await NetworkCaller().getRequest(Urls.getProductReview(id));
    _productReviewInProgress = false;
    if (response.isSuccess) {
      _getProductReviewModel =
          ProductReviewModel.fromJson(response.responseJson ?? {});
      update();
      log(_getProductReviewModel.toString());
      return true;
    } else {
      _message = 'Get product review failed! Try again';
      update();
      return false;
    }
  }
}