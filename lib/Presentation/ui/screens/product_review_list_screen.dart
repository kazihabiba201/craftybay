import 'package:ecommerce/Presentation/state_holders/get_product_review_controller.dart';
import 'package:ecommerce/Presentation/ui/screens/ReviewsScreen.dart';
import 'package:ecommerce/Presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductReviewListScreen extends StatefulWidget {
  final int productId;

  const ProductReviewListScreen({Key? key, required this.productId})
      : super(key: key);

  @override
  State<ProductReviewListScreen> createState() =>
      _ProductReviewListScreenState();
}

class _ProductReviewListScreenState extends State<ProductReviewListScreen> {
  @override
  void initState() {
    super.initState();
    Get.find<GetProductReviewController>().getProductReview(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          "Reviews",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black.withOpacity(.5),
            size: 22,
          ),
        ),
      ),
      body: GetBuilder<GetProductReviewController>(
          builder: (productReviewController) {
        if (productReviewController.productReviewInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (productReviewController
            .getProductReviewModel.data!.isEmpty) {
          return const Center(
            child: Text("Empty Review List.Please Create Review"),
          );
        }

        var reviewData = productReviewController.getProductReviewModel.data!;

        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: productReviewController
                          .getProductReviewModel.data?.length ??
                      0,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            title: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey[300],
                                  radius: 16,
                                  child: const Icon(
                                    Icons.person_outline_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  reviewData[index].profile?.cusName ??
                                      "Unknown",
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 60,
                                    child: Row(
                                      children: [
                                        Text(reviewData[index].rating ?? "0"),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Container(
                              padding: const EdgeInsets.only(left: 36.0),
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    reviewData[index].description ?? "",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      letterSpacing: .2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          "Total Reviews : (${productReviewController.getProductReviewModel.data?.length ?? 0})",
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          )),
                      const Spacer(),
                      FloatingActionButton(
                        mini: true,
                        backgroundColor: AppColors.primaryColor,
                        onPressed: () {
                          Get.to(() => ReviewScreen(
                                product: widget.productId,
                              ));
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ))
          ],
        );
      }),
    );
  }
}
