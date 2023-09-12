import 'package:bloc/bloc.dart';
import 'package:fakestore/models/model.dart';

part 'cart_list_event.dart';
part 'cart_list_state.dart'; 

class CartListBloc extends Bloc<CartListEvent, CartListState> {
  CartListBloc() : super(CartListInitial()) {
    on<UpdateCartEvent>((event, emit) {
      event.add?
      state.cart.add(event.product):
      state.cart.remove(event.product);
      emit(CartListState(cart: state.cart));
    });
    on<GetCartEvent>((event, emit) {
      emit(CartListState(cart: state.cart));
    },);
  }
}
