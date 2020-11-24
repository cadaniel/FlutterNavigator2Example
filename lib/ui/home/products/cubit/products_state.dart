part of 'products_cubit.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  factory ProductsState.loading() = _Loading;
  factory ProductsState.loaded(List<Product> products) = _Loaded;
}
