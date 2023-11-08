import 'package:ecommerce/Presentation/state_holders/delete_wish_list_item_controller.dart';
import 'package:ecommerce/Presentation/state_holders/wish_list_controller.dart';
import 'package:ecommerce/Presentation/ui/screens/product_details_screen.dart';
import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/data/models/wishlist_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListProductCard extends StatelessWidget {
  final WishListData wishData;

  const WishListProductCard({
    super.key,
    required this.wishData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Get.to(
          () => ProductDetailsScreen(
            productId: wishData.productId!,
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 150,
          child: Column(
            children: [
              Container(
                height: 135,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Image.network(
                  wishData.product?.image ??
                      'https://assets.adidas.com/images/w_600,f_auto,q_auto/f9d52817f7524d3fb442af3b01717dfa_9366/Runfalcon_3.0_Shoes_Black_HQ3790_01_standard.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wishData.product?.title ??
                          'Wished product name not found',
                      maxLines: 1,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "৳${wishData.product?.price ?? '0'}",
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        const Spacer(),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Text(
                              wishData.product?.star.toString() ?? '0',
                              maxLines: 1,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 28,
                          child: FittedBox(
                            child: Card(
                              color: AppColors.primaryColor,
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    size: 36,
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    Get.find<DeleteWishItemController>()
                                        .deleteWishItem(
                                            wishData.productId.toString());
                                    Get.find<WishListController>()
                                        .getWishList();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
