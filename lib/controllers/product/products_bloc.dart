import 'package:fakestore/controllers/api_integration.dart';
import 'package:fakestore/models/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<GetDataEvent>((event, emit) async {
      emit(ProductsState(store: []));
      final products = await Api().getall();
      return emit(ProductsState(store: products));
    });
  }
}
