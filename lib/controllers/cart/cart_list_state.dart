part of 'cart_list_bloc.dart';

class CartListState {
  List<FakeStore> cart;

  CartListState({required this.cart});
}

final class CartListInitial extends CartListState {
  CartListInitial() : super(cart: []);
}
