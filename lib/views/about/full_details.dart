import 'package:fakestore/core/constants/constants.dart';
import 'package:fakestore/models/model.dart';
import 'package:fakestore/views/about/widgets/bottom_button_section.dart';
import 'package:fakestore/views/about/widgets/lists_properties.dart';
import 'package:fakestore/views/about/widgets/price_section.dart';
import 'package:fakestore/views/cart/shopping_cart.dart';
import 'package:flutter/material.dart';

List<FakeStore> storeList = [];

class FullDetails extends StatelessWidget {
  const FullDetails({Key? key, required this.data}) : super(key: key);
  final FakeStore data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantBackground,
      appBar: AppBar(
        elevation: 1  ,shadowColor: const Color.fromARGB(248, 250, 250, 250)  ,
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
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,top: 15),
              child: ListView(
                children: [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(data.image),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Divider(),
                  Text(
                    data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Row(
                        children: icons,
                      ),
                      const Text(
                        "12,333 ratings",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  PriceSection(data: data),
                  Text(
                    data.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ButtonSectionBottom(data: data),
          ],
        ),
      ),
    );
  }
}
