import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_example/ui/common/paltform_scaffold.dart';
import 'package:navigator_example/ui/common/platform_page.dart';
import 'package:navigator_example/ui/home/cubit/cart/cart_cubit.dart';

class CartPage extends PlatformPage {
  CartPage() : super(CartWidget(), "cart");
}

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      materialAppBar: AppBar(
        title: Text("Your Cart"),
      ),
      cupertinoNavigationBar: CupertinoNavigationBar(
        middle: Text("Shopping Cart"),
      ),
      child: BlocBuilder(
        cubit: BlocProvider.of<CartCubit>(context),
        builder: (BuildContext context, CartState state) {
          var products = state.itemsInCard;
          if (products.isEmpty) {
            return Container(
              child: Center(
                child: Text("Nothing here, Go shopping!"),
              ),
            );
          }
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text(products[index].description),
              );
            },
            separatorBuilder: (_, index) => Divider(),
            itemCount: products.length,
          );
        },
      ),
    );
  }
}
