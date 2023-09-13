import 'package:fakestore/views/cart/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fakestore/core/constants/constants.dart';
import 'package:fakestore/controllers/product/products_bloc.dart';
import 'package:fakestore/views/home/widgets/home_section_main.dart';
import 'package:fakestore/views/home/widgets/home_section_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductsBloc>().add(GetDataEvent());
    return Scaffold(
      backgroundColor: constantBackground,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FakeStore',
          style: TextStyle(fontStyle: FontStyle.normal),
        ), 
        leading: const Icon(Icons.list_outlined),
        backgroundColor: constantBackground,
        surfaceTintColor: constantBackground,
        actions: [
          IconButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShoppingCart()));
              },
              icon: const Icon(Icons.local_grocery_store_sharp))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            HomeSectionMain(),
            height10,
            Row(
              children: [
                width15,
                Text(
                  'Latest Arrives',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
            HomeSectionList(),
          ],
        ),
      ),
    );
  }
}



// Shimmer(
//                               period: Duration(seconds: 2),
//                               gradient: LinearGradient(colors: [
//                                 const Color.fromARGB(255, 255, 255, 255),
//                                 Color.fromARGB(31, 228, 228, 228),
//                                 const Color.fromARGB(221, 255, 255, 255)
//                               ]),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(16),
//                                   color: Colors.amber,
//                                 ),
//                               ),
//                             ) 