import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator_example/data/model/product.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  List<Product> _cartItems = [];

  CartCubit() : super(CartState([]));

  void toggleItem(Product product) {
    if (_cartItems.contains(product)) {
      _cartItems.remove(product);
    } else {
      _cartItems.add(product);
    }
    emit(CartState(_cartItems));
  }
}
