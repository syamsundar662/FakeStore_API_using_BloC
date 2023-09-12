
import 'package:fakestore/controllers/cart/cart_list_bloc.dart';
import 'package:fakestore/controllers/get_all_data.dart';
import 'package:fakestore/models/model.dart';
import 'package:fakestore/views/about/widgets/main_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            MainButtons(buttonColor: const MaterialStatePropertyAll(Colors.black),icon: Icons.shopping_cart,data: data, buttonTitle: 'Add to cart', function: (){
              context.read<CartListBloc>().add(UpdateCartEvent(add: true, product: data));
              }
              ),
            MainButtons(buttonColor: const MaterialStatePropertyAll(  Color.fromARGB(255, 20, 160, 7)),icon: Icons.shopping_cart,data: data, buttonTitle: 'Buy Now',function: () {
              Post().postData();
            },),
          ],
        ),
      ),
    );
  }
}

