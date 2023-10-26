// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/producs_model.dart';
import 'package:store/services/get_all_products_servisces.dart';

import '../widgets/Custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 65,
          ),
          child: FutureBuilder<List<ProductModel>>(
            future: GetAllProductsService().getAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                    itemCount: products.length,
                    clipBehavior: Clip.none,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 100,
                    ),
                    itemBuilder: (context, index) {
                      return CustomCard(
                        product: products[index],
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
