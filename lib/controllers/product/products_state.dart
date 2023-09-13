part of 'products_bloc.dart';

class ProductsState {
  List<FakeStore> store;

  ProductsState({required this.store});
}

final class ProductsInitial extends ProductsState {
  ProductsInitial() : super(store: []);
}
