// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store/Screens/update_producr_page.dart';
import 'package:store/models/producs_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    super.key,
  });
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 20,
                  offset: Offset(1, 1))
            ]),
            child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title.substring(0, 6),
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price.toString()}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
          Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              product.image,
              height: 90,
              width: 90,
            ),
          )
        ],
      ),
    );
  }
}
