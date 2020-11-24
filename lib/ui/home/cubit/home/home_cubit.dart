import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator_example/data/model/product.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.products());

  void navigateToCart() => emit(HomeState.cart());

  void navigateToProduct(Product product) => emit(HomeState.product(product));
}
