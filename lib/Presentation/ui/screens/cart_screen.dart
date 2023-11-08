import 'package:ecommerce/Presentation/state_holders/read_profile_controller.dart';
import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/Presentation/ui/widgets/home/card_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/cart_list_controller.dart';
import '../../state_holders/main_bottom_nav_controller.dart';
import 'auth/complete_profile_screen.dart';
import 'checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<CartListController>().getCartList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Get.find<MainBottomNavController>().backToHome();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Get.find<CartListController>().getCartList();
        },
        child: GetBuilder<CartListController>(builder: (cartListController) {
          if (cartListController.getCartListInProgress) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartListController.cartListModel.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return CartProductCard(
                      cartData: cartListController.cartListModel.data![index],
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    color: AppColors.primaryColor.withOpacity(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total Price',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '\$${cartListController.totalPrice}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (await Get.find<ReadProfileController>()
                                  .readProfileData() ==
                              false) {
                            Get.to(() => CreateProfileScreen());
                          } else if (Get.find<CartListController>()
                                  .cartListModel
                                  .data
                                  ?.isNotEmpty ??
                              false) {
                            Get.to(() => const CheckOutScreen());
                          }
                        },
                        child: const Text('Checkout'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
