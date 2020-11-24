part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  factory CartState(List<Product> itemsInCard) = _CartState;
}
