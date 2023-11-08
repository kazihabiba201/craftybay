//
//
//
// import 'package:ecommerce/Presentation/state_holders/add_to_cart_controller.dart';
// import 'package:ecommerce/Presentation/state_holders/create_wish_list_controller.dart';
// import 'package:ecommerce/Presentation/state_holders/products_details_controller.dart';
// import 'package:ecommerce/Presentation/ui/screens/product_review_list_screen.dart';
// import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
// import 'package:ecommerce/Presentation/ui/widgets/custom_stepper.dart';
// import 'package:ecommerce/Presentation/ui/widgets/home/product_image_slider.dart';
// import 'package:ecommerce/Presentation/ui/widgets/size_picker.dart';
// import 'package:ecommerce/data/models/product_details.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ProductDetailsScreen extends StatefulWidget {
//   final int productId;
//
//   const ProductDetailsScreen({
//     super.key,
//     required this.productId,
//   });
//
//   @override
//   State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
// }
//
// class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
//   int _selectedColorIndex = 0;
//   int _selectedSizeIndex = 0;
//   int quantity = 1;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Get.find<ProductDetailsController>().getProductDetails(widget.productId);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//      return
//     // WillPopScope(
//     //   onWillPop: () async {
//     //     Get.find<MainBottomNavController>().backToHome();
//     //     return false;
//     //   },
//     //   child:
//        Scaffold(
//         body: GetBuilder<ProductDetailsController>(
//             builder: (productDetailsController) {
//           if (productDetailsController.getProductDetailsInProgress) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           return SafeArea(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Stack(
//                           children: [
//                             ProductImageSlider(
//                               imageList: [
//                                 productDetailsController.productDetails.img1 ??
//                                     '',
//                                 productDetailsController.productDetails.img2 ??
//                                     '',
//                                 productDetailsController.productDetails.img3 ??
//                                     '',
//                                 productDetailsController.productDetails.img4 ??
//                                     '',
//                               ],
//
//                              ),
//                             productDetailsAppbar,
//                           ],
//                         ),
//                         productDetailsWidget(
//                             productDetailsController.productDetails,
//                             productDetailsController.availableColors),
//                       ],
//                     ),
//                   ),
//                 ),
//                 addToCartBottomContainer(
//                     productDetailsController.productDetails,
//                     productDetailsController.availableColors,
//                     productDetailsController.availableSizes),
//               ],
//             ),
//           );
//         }),
//
//     );
//   }
//
//   Padding productDetailsWidget(
//       ProductDetails productDetails, List<String> colors) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Expanded(
//                   child: Text(
//                 productDetails.product?.title ?? '',
//                 style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 0.5),
//               )),
//               CustomStepper(
//                   lowerLimit: 1,
//                   upperLimit: 10,
//                   stepValue: 1,
//                   value: 1,
//                   onChange: (newValue) {
//                     quantity= newValue;
//                   }),
//             ],
//           ),
//           Row(
//             children: [
//               Wrap(
//                 crossAxisAlignment: WrapCrossAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.star,
//                     size: 18,
//                     color: Colors.amber,
//                   ),
//                   Text(
//                     '${productDetails.product?.star ?? 0}',
//                     style: const TextStyle(
//                         overflow: TextOverflow.ellipsis,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.blueGrey),
//                   ),
//                 ],
//               ),
//               TextButton(
//                 onPressed: () {
//                   Get.to(() => ProductReviewListScreen(productId: productDetails.productId ?? 0,));
//                 },
//                 child: const Text(
//                   'Review',
//                   style: TextStyle(
//                       fontSize: 15,
//                       color: AppColors.primaryColor,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//               GetBuilder<CreateWishListController>(
//                   builder: (createWishListController) {
//                     return SizedBox(
//                       height: 22,
//                       child: FittedBox(
//                         child: Card(
//                           color: AppColors.primaryColor,
//                           child: Padding(
//                             padding:
//                             const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
//                             child: IconButton(
//                               onPressed: () async {
//                                 final response = await createWishListController
//                                     .createWishList(productDetails.productId!);
//                                 if (response) {
//                                   Get.snackbar(
//                                     'Happy Shopping! ツ',
//                                     'This product has been added to wish list',
//                                     backgroundColor: Colors.green.withOpacity(.2),
//                                     snackPosition: SnackPosition.BOTTOM,
//                                   );
//                                 } else {
//                                   Get.snackbar(
//                                     'Opps!',
//                                     'Unable add to wish to list',
//                                     backgroundColor: Colors.red.withOpacity(.2),
//                                     snackPosition: SnackPosition.BOTTOM,
//                                   );
//                                 }
//                               },
//                               icon: const Icon(
//                                 Icons.favorite_border,
//                                 size: 32,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//
//             ],
//           ),
//           const Text(
//             'Color',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//
//           SizedBox(
//             height: 28,
//             child: SizePicker(
//               initialSelected: 0,
//               onSelected: (int selectedSize) {
//                 _selectedColorIndex = selectedSize;
//               },
//               sizes: productDetails.color?.split(',') ?? [],
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const Text(
//             'Size',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           SizedBox(
//             height: 28,
//             child: SizePicker(
//               initialSelected: 0,
//               onSelected: (int selectedSize) {
//                 _selectedSizeIndex = selectedSize;
//               },
//               sizes: productDetails.size?.split(',') ?? [],
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const Text(
//             'Description',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//     Text(productDetails.des ?? ""),
//         ],
//       ),
//     );
//   }
//
//   AppBar get productDetailsAppbar {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       title: const Text(
//         'Product Details',
//         style: TextStyle(color: Colors.black),
//       ),
//       elevation: 0,
//       leading: const BackButton(
//          color: Colors.black54,),
//
//
//     );
//   }
//
//   Container addToCartBottomContainer(
//       ProductDetails details, List<String> colors, List<String> sizes) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       decoration: BoxDecoration(
//           color: AppColors.primaryColor.withOpacity(0.1),
//           borderRadius: const BorderRadius.only()),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Price',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black,
//                     fontSize: 16,
//                   )),
//               Text(
//                 '৳${details.product!.price ?? ''}',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.primaryColor,
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             width: 120,
//             child:
//                 GetBuilder<AddToCartController>(builder: (addToCartController) {
//               if (addToCartController.addToCartInProgress) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//               return ElevatedButton(
//                 onPressed: () async {
//                   final result = await addToCartController.addToCart(
//                     details.id!,
//                     colors[_selectedColorIndex].toString(),
//                     sizes[_selectedSizeIndex],
//                     quantity,
//                   );
//                   if (result) {
//                     Get.snackbar(
//                         'Added to cart', 'This product has been added to cart',
//                         snackPosition: SnackPosition.BOTTOM);
//                   }
//                 },
//                 child: const Text('Add to Cart'),
//               );
//             }),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce/Presentation/state_holders/add_to_cart_controller.dart';
import 'package:ecommerce/Presentation/state_holders/create_wish_list_controller.dart';
import 'package:ecommerce/Presentation/state_holders/delete_wish_list_item_controller.dart';
import 'package:ecommerce/Presentation/state_holders/products_details_controller.dart';

import 'package:ecommerce/Presentation/ui/screens/product_review_list_screen.dart';
import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
import 'package:ecommerce/data/models/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




import '../widgets/custom_stepper.dart';
import '../widgets/home/product_image_slider.dart';
import '../widgets/size_picker.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {



  int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<ProductDetailsController>().getProductDetails(widget.productId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProductDetailsController>(
          builder: (productDetailsController) {
            if (productDetailsController.getProductDetailsInProgress) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,),
              );
            }
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ProductImageSlider(
                                imageList: [
                                  productDetailsController.productDetails
                                      .img1 ?? '',
                                  productDetailsController.productDetails
                                      .img2 ?? '',
                                  productDetailsController.productDetails
                                      .img3 ?? '',
                                  productDetailsController.productDetails
                                      .img4 ?? ''
                                ],
                              ),
                              productDetailsAppBar,
                            ],
                          ),
                          productDetails(
                              productDetailsController.productDetails,
                              productDetailsController.availableColors),
                        ],
                      ),
                    ),
                  ),
                  addToCartBottomContainer(
                    productDetailsController.productDetails,
                    productDetailsController.availableColors,
                    productDetailsController.availableSizes,
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

  Padding productDetails(ProductDetails productDetails, List<String> colors) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  productDetails.product?.title ?? '',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
              ),
              CustomStepper(
                lowerLimit: 1,
                upperLimit: 10,
                stepValue: 1,
                value: 1,
                onChange: (newValue) {
                  quantity = newValue;
                  //print(newValue);
                },
              ),
            ],
          ),
          Row(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.star_border,
                    size: 15,
                    color: Colors.amber,
                   
                  ),
                  Text(
                    '${productDetails.product?.star ?? 0}',
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () async {
                  Get.to(() =>
                      ProductReviewListScreen(productId: widget.productId,));
                },
                child: const Text(
                  'Review',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
    GetBuilder<CreateWishListController>(
                  builder: (createWishListController) {
                    return SizedBox(
                      height: 22,
                      child: FittedBox(
                        child: Card(
                          color: AppColors.primaryColor,
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                            child: IconButton(
                              onPressed: () async {
                                final response = await createWishListController
                                    .createWishList(productDetails.productId!);
                                if (response) {
                                  Get.snackbar(
                                    'Enjoy your shopping!',
                                    'Your item has been added to your wish list.',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                } else {
                                  Get.snackbar(
                                    'Opps!',
                                    'Sorry, we could not add it to your wish list.',
                                    backgroundColor: Colors.red,
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                              },
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
//
            ],
          ),
          const Text(
            'Color',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 30,
            child: SizePicker(
              initialSelected: 0,
              onSelected: (int selectedSize) {
                _selectedColorIndex = selectedSize;
              },
              sizes: productDetails.color?.split(',') ?? [],
            ),
          ),

          const SizedBox(height: 16),
          const Text(
            'Size',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 30,
            child: SizePicker(
              initialSelected: 0,
              onSelected: (int selectedSize) {
                _selectedSizeIndex = selectedSize;
              },
              sizes: productDetails.size?.split(',') ?? [],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Description',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          Text(productDetails.product?.shortDes ?? ''),
        ],
      ),
    );
  }

  AppBar get productDetailsAppBar {
    return AppBar(
      title: const Text(
        'Product Details',
        style: TextStyle(color: Colors.black54),
      ),
      leading: const BackButton(
        color: Colors.black54,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Container addToCartBottomContainer(ProductDetails details,
      List<String> colors, List<String> sizes) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: AppColors.primaryColor.withOpacity(0.1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              Text('\$ ${details.product?.price ?? 0}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.primaryColor,
                ),),
            ],
          ),
          SizedBox(
            width: 120,
            child: GetBuilder<AddToCartController>(
                builder: (addToCartController) {
                  if (addToCartController.addToCartInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ElevatedButton(
                    onPressed: () async {
                      final result = await addToCartController.addToCart(
                        details.id!,
                        colors[_selectedColorIndex].toString(),
                        sizes[_selectedSizeIndex],
                        quantity,

                      );
                      if (result) {
                        Get.snackbar(
                          'Added to Cart',
                          'This Product has been Added to Cart',
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: AppColors.primaryColor.withOpacity(
                              0.5),
                        );
                      }
                    },

                    child: const Text('Add to Cart'),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

}

