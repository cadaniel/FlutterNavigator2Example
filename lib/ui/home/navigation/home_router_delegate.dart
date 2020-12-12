import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_example/ui/home/cart/ui/cart_page.dart';
import 'package:navigator_example/ui/home/cubit/home/home_cubit.dart';
import 'package:navigator_example/ui/home/product/ui/product_page.dart';
import 'package:navigator_example/ui/home/products/ui/products_widget.dart';

class HomeRouterDelegate extends RouterDelegate<HomeState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<HomeState> {
  final GlobalKey<NavigatorState> navigatorKey;

  HomeRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  List<Page<dynamic>> _getPages(
      HomeState currentState, HomeState previousState) {
    List<Page<dynamic>> pages = [ProductsPage()];

    previousState?.maybeWhen(
      orElse: () {},
      product: (product) {
        if (currentState == HomeState.cart()) {
          pages.add(ProductPage(product));
        }
      },
    );

    currentState.when(
      products: () {},
      product: (product) => pages.add(ProductPage(product)),
      cart: () => pages.add(CartPage()),
    );

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<HomeCubit>(context);
    return BlocListener(
      cubit: cubit,
      listener: (_, HomeState state) {
        notifyListeners();
      },
      child: Navigator(
        pages: _getPages(cubit.state, cubit.previousState),
        onPopPage: (route, result) {
          if (!route.didPop(result) || cubit.state == HomeState.products()) {
            return false;
          }
          cubit.state.when(
            products: () {
              cubit.navigateToProducts();
            },
            product: (product) {
              cubit.navigateToProducts();
            },
            cart: () {
              cubit.previousState.when(
                products: () {
                  cubit.navigateToProducts();
                },
                product: (product) {
                  cubit.navigateToProduct(product);
                },
                cart: () {},
              );
            },
          );
          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(HomeState configuration) async {
    notifyListeners();
  }
}
