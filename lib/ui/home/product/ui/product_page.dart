import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_example/data/model/product.dart';
import 'package:navigator_example/ui/common/paltform_scaffold.dart';
import 'package:navigator_example/ui/common/platform_page.dart';
import 'package:navigator_example/ui/home/cubit/cart/cart_cubit.dart';
import 'package:navigator_example/ui/home/cubit/home/home_cubit.dart';

class ProductPage extends PlatformPage {
  final Product product;
  ProductPage(this.product)
      : super(
          ProductWidget(
            product: product,
          ),
          "product",
        );
}

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var homeCubit = BlocProvider.of<HomeCubit>(context);
    var cartCubit = BlocProvider.of<CartCubit>(context);
    return PlatformScaffold(
      materialAppBar: AppBar(
        title: Text(product.description),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => homeCubit.navigateToCart(),
          ),
        ],
      ),
      cupertinoNavigationBar: CupertinoNavigationBar(
        previousPageTitle: "Products",
        middle: Text(product.description),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => homeCubit.navigateToCart(),
        ),
      ),
      child: Container(
        child: Center(
          child: Card(
            child: Column(
              children: [
                Image.network(product.imageUrl),
                SizedBox(height: 8),
                Text(product.description),
                RaisedButton(
                  onPressed: () {
                    cartCubit.toggleItem(product);
                  },
                  child: Text(
                    cartCubit.state.itemsInCard.contains(product)
                        ? "Remove from cart"
                        : "Add to cart",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
