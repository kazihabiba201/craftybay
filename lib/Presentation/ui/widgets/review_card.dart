
import 'dart:convert';

import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(

          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      Row(
                        children: const [
                          CircleAvatar(

                            radius: 14,
                          ),
                          SizedBox(
                            height: 16,
                          ),

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Rabbil Hasan',

                              style: TextStyle(

                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),

               const SingleChildScrollView(
                 child:  Text('''Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print,  text can be very useful when the focus is meant to be on design, not content.'''),
               )



              ],
    ),
            )),

      )
    );
  }
}
