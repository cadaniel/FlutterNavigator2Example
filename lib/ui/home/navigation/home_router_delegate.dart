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
    List<Page<dynamic>> pages = [];
    pages.add(ProductsPage());
    _previousState?.maybeWhen(
      orElse: () {},
      product: (product) => pages.add(ProductPage(product)),
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
    return BlocListener(
      cubit: BlocProvider.of<HomeCubit>(context),
      listener: (_, HomeState state) {
        state.maybeWhen(
          orElse: () {},
          cart: () {
            _previousState = _currentState;
          },
        );
        _currentState = state;
        notifyListeners();
      },
      child: Navigator(
        pages: _getPages(),
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          return _currentState.when(
            products: () {
              return false;
            },
            product: (product) {
              _currentState = _previousState ?? HomeState.product(product);
              return true;
            },
            cart: () {
              _currentState = _previousState ?? HomeState.products();
              return true;
            },
          );
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(HomeState configuration) async {
    _currentState = configuration;
  }
}
