import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator_example/data/model/product.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsState.loading()) {
    var products = List.generate(
      10,
      (index) => Product(
        "https://picsum.photos/200/300?random=1",
        "Product no. $index",
      ),
    );
    emit(ProductsState.loaded(products));
  }
}
