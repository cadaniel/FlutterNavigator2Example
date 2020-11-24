part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  factory HomeState.products() = _Products;
  factory HomeState.product(Product product) = _Product;
  factory HomeState.cart() = _Cart;
}
