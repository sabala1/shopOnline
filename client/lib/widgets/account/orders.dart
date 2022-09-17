import 'package:flutter/material.dart';
import 'package:shoponline/constants/gobal_variables.dart';
import 'package:shoponline/widgets/account/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
      'https://images.unsplash.com/photo-1554587293-d010b477b5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFjYXJvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
      'https://images.unsplash.com/photo-1554587293-d010b477b5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFjYXJvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
      'https://images.unsplash.com/photo-1554587293-d010b477b5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFjYXJvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
      'https://images.unsplash.com/photo-1554587293-d010b477b5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFjYXJvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: const Text(
                  'สินค้าของคุณ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  'ดูทั้งหมด',
                  style: TextStyle(
                    color: GlobalVariables.selectedNavBarColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        //display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 10, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
