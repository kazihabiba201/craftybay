import 'package:ecommerce/Presentation/state_holders/add_to_cart_controller.dart';
import 'package:ecommerce/Presentation/state_holders/cart_list_controller.dart';
import 'package:ecommerce/Presentation/state_holders/category_controller.dart';
import 'package:ecommerce/Presentation/state_holders/create_invoice_controller.dart';
import 'package:ecommerce/Presentation/state_holders/create_product_review_controller.dart';
import 'package:ecommerce/Presentation/state_holders/create_profile_controller.dart';
import 'package:ecommerce/Presentation/state_holders/create_wish_list_controller.dart';
import 'package:ecommerce/Presentation/state_holders/delete_wish_list_item_controller.dart';

import 'package:ecommerce/Presentation/state_holders/email_verification_controller.dart';
import 'package:ecommerce/Presentation/state_holders/get_product_review_controller.dart';
import 'package:ecommerce/Presentation/state_holders/home_slider_controller.dart';
import 'package:ecommerce/Presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/Presentation/state_holders/new_product_controller.dart';
import 'package:ecommerce/Presentation/state_holders/otp_verification_controller.dart';
import 'package:ecommerce/Presentation/state_holders/popular_product_controller.dart';
import 'package:ecommerce/Presentation/state_holders/product_list_controller.dart';
import 'package:ecommerce/Presentation/state_holders/products_details_controller.dart';
import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
import 'package:ecommerce/Presentation/state_holders/special_product_controller.dart';
import 'package:ecommerce/Presentation/state_holders/theme_mode_controller.dart';
import 'package:ecommerce/Presentation/state_holders/wish_list_controller.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
    Get.put(HomeSliderController());
    Get.put(CategoriesController());
    Get.put(PopularProductController());
    Get.put(SpecialProductController());
    Get.put(NewProductController());
    Get.put(ProductDetailsController());
    Get.put(AddToCartController());
    Get.put(ProductListController());
    Get.put(CartListController());
    Get.put(CreateInvoiceController());
   Get.put(DeleteWishItemController());
    Get.put(WishListController());
    Get.put(CreateWishListController());
    Get.put(GetProductReviewController());
    Get.put(CreateProductReviewController());
    Get.put(CreateProfileController());
    Get.put(ReadProfileController());
    Get.lazyPut(() => ThemeModeController());


  }

}