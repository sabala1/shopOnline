import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoponline/pages/admin/add_product_screen.dart';
import 'package:shoponline/widgets/account/single_product.dart';

import '../../models/product_model.dart';
import '../../service/admin_service.dart';
import '../../widgets/loader.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Product>? products;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  void deleteProduct(Product product, int index) {
    adminServices.deleteProduct(
      context: context,
      product: product,
      onSuccess: () {
        products!.removeAt(index);
        setState(() {});
      },
    );
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(context);
    setState(() {});
  }

  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return products == null
        ? CircularProgressIndicatorLoader()
        : Scaffold(
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: products!.length,
              itemBuilder: (context, index) {
                final productData = products![index];
                return Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                 //  CarouselSlider(
                          //   items: [
                          //     SizedBox(
                          //       height: 140,
                          //       child: SingleProduct(
                          //         image: products![index].images[index]
                                  
                          //       ),
                          //     ),
                          //   ],
                          //   options: CarouselOptions(
                          //     viewportFraction: 1,
                          //     height: 200,
                          //   ),
                          // ), 
                          SizedBox(
                                height: 140,
                                child: SingleProduct(
                                  image: productData.images[index],
                                ),
                              ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    products![index].name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () =>
                                      deleteProduct(products![index], index),
                                  icon: const Icon(
                                    Icons.delete_outline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: navigateToAddProduct,
            ),
          );
  }
}
