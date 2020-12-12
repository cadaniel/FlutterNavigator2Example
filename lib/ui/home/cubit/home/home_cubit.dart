import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator_example/data/model/product.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.products());

  HomeState previousState = HomeState.products();

  void navigateToCart() {
    previousState = state;
    emit(HomeState.cart());
  }

  void navigateToProduct(Product product) {
    previousState = state;
    emit(HomeState.product(product));
  }

  void navigateToProducts() {
    previousState = state;
    emit(HomeState.products());
  }
}
