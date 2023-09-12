
import 'package:fakestore/models/model.dart';
import 'package:fakestore/views/about/full_details.dart';
import 'package:fakestore/views/about/widgets/main_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSectionBottom extends StatelessWidget {
  const ButtonSectionBottom({
    super.key,
    required this.data,
  });

  final FakeStore data;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainButtons(buttonColor: const MaterialStatePropertyAll(Colors.black),icon: Icons.shopping_cart,data: data, buttonTitle: 'Add to cart', function: (){storeList.add(data);}),
            MainButtons(buttonColor: const MaterialStatePropertyAll(  Color.fromARGB(255, 20, 160, 7)),icon: Icons.shopping_cart,data: data, buttonTitle: 'Buy Now'),
          ],
        ),
      ),
    );
  }
}

