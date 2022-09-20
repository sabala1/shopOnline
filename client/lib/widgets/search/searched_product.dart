import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../stars.dart';

class SearchedProduct extends StatelessWidget {
  final Product product;
  const SearchedProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double totalRating = 0;
    // for (int i = 0; i < product.rating!.length; i++) {
    //   totalRating += product.rating![i].rating;
    // }
    // double avgRating = 0;
    // if (totalRating != 0) {
    //   avgRating = totalRating / product.rating!.length;
    // }
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              product.images[0],
              fit: BoxFit.contain,
              height: 135,
              width: 125,
            ),
            Column(
            children: [
              Container(
                width: 235,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5),
                // child: Stars(
                //   rating: avgRating,
                // ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  '${product.price}\บาท',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10),
                child: const Text('ส่งฟรีทั่วไทย'),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: const Text(
                  'In Stock',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
              ),
          ],
        ),
      ],
    );
  }
}
