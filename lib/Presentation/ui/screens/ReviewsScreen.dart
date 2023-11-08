import 'package:ecommerce/Presentation/state_holders/create_product_review_controller.dart';
import 'package:ecommerce/Presentation/state_holders/get_product_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key, required this.product});

  final int product;

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final TextEditingController reviewTextEditingController =
      TextEditingController();
  final TextEditingController ratingTextEditingController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  double countRate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Create Review',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            leading: const BackButton(
              color: Colors.black54,
            )),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text('Rate This Product!',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 1,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemCount: 5,
                      itemBuilder: (context, _) {
                        return const Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (rating) {
                        countRate = rating;
                        if (mounted) {
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Rating : ${countRate.toString()}",
                      style: const TextStyle(
                        fontSize: 15,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    'Write Your Review',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    maxLines: 11,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your Review';
                      }
                      return null;
                    },
                    controller: reviewTextEditingController,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      hintText:
                          "Would you like to write anything about this product?",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GetBuilder<CreateProductReviewController>(
                      builder: (createReviewController) {
                    return Visibility(
                      visible:
                          !createReviewController.createProductReviewInProgress,
                      replacement: const Center(
                        child: CircularProgressIndicator(),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                createReviewController
                                    .createProductReview(
                                  reviewTextEditingController.text.trim(),
                                  widget.product,
                                  countRate,
                                )
                                    .then((result) {
                                  if (result == true) {
                                    reviewTextEditingController.clear();

                                    Get.find<GetProductReviewController>()
                                        .getProductReview(widget.product);

                                    Get.snackbar(
                                      'We are grateful for your feedback!',
                                      'Review added successfully',
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  } else {
                                    Get.snackbar(
                                      'failed!',
                                      'Sorry, the product review could not be processed. Please attempt it again.',
                                      backgroundColor: Colors.red,
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  }
                                });
                              }
                            },
                            child: const Text("Submit")),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        )));
  }
}
