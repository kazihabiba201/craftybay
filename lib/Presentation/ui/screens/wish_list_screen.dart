
import 'package:ecommerce/Presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/Presentation/state_holders/wish_list_controller.dart';
import 'package:ecommerce/Presentation/ui/widgets/home/wishList_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<WishListController>().getWishList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<MainBottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Wish List',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
            leading: IconButton(
              onPressed: (){
                Get.find<MainBottomNavController>().backToHome();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black54,),
            )

        ),
        body: GetBuilder<WishListController>(
          builder: (wishListController) {
            if (wishListController.getWishListInProgress) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (wishListController.wishListModel.data == null ||
                wishListController.wishListModel.data!.isEmpty) {
              return const Center(
                child: Text('No products in the wish list'),
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                await wishListController.getWishList();
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                child: GridView.builder(
                  itemCount: wishListController.wishListModel.data?.length ?? 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 32,
                  ),
                  itemBuilder: (context, index) {
                    return FittedBox(
                      fit: BoxFit.cover,
                      child: WishListProductCard(
                        wishData: wishListController.wishListModel.data![index],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
