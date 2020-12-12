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

  HomeState _currentState = HomeState.products();
  HomeState _previousState;

  HomeRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  HomeState get currentConfiguration => _currentState;

  List<Page<dynamic>> _getPages() {
    List<Page<dynamic>> pages = [ProductsPage()];

    _previousState?.maybeWhen(
      orElse: () {},
      product: (product) {
        if (_currentState == HomeState.cart()) {
          pages.add(ProductPage(product));
        }
      },
    );

    _currentState.when(
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
      listenWhen: (past, current) => _previousState != past,
      listener: (_, HomeState state) {
        _previousState = _currentState;
        _currentState = state;
        notifyListeners();
      },
      child: Navigator(
        pages: _getPages(),
        onPopPage: (route, result) {
          if (!route.didPop(result) || _currentState == HomeState.products()) {
            return false;
          }
          _currentState.when(
            products: () {
              _previousState = HomeState.products();
              _currentState = HomeState.products();
            },
            product: (product) {
              _currentState = HomeState.products();
              _previousState = HomeState.product(product);
              cubit.navigateToProducts();
            },
            cart: () {
              _previousState.when(
                products: () {
                  _currentState = HomeState.products();
                  _previousState = HomeState.cart();
                  cubit.navigateToProducts();
                },
                product: (product) {
                  _currentState = HomeState.product(product);
                  _previousState = HomeState.cart();
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
    _currentState = configuration;
    notifyListeners();
  }
}
