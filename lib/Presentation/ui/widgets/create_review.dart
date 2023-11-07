
import 'dart:convert';

import 'package:ecommerce/Presentation/ui/screens/ReviewsScreen.dart';
import 'package:ecommerce/Presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/Presentation/ui/screens/product_details_screen.dart';
import 'package:ecommerce/Presentation/ui/widgets/review_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CreateReview extends StatelessWidget {
  const CreateReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Create Reviews',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {

              // Get.to(const ReviewScreen());

            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children:  [
              const SizedBox(height:24),
            TextFormField( decoration: const InputDecoration(
              hintText: 'First Name',
            ),

              ),
              const SizedBox(height:24),
              TextFormField( decoration: const InputDecoration(
                hintText: 'Last Name',
              ),

              ),
              const SizedBox(height:24),
              TextFormField(  decoration:  const InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                hintText: 'Write Review',

              ),

                maxLines: 11,
              ),
              const SizedBox(height:16),
              SizedBox(width: double.infinity, child: ElevatedButton( onPressed: (){

              }, child: const Text('Submit'),),),
            ],
          ),
        ),
      ),
    );
  }
}
