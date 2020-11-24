import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_example/ui/cart/auth_cubit.dart';
import 'package:navigator_example/ui/home/ui/home_page.dart';
import 'package:navigator_example/ui/loading/ui/loading.dart';
import 'package:navigator_example/ui/login/ui/login_page.dart';

class NavigatorExampleRouteDelegate extends RouterDelegate<AuthState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AuthState> {
  final GlobalKey<NavigatorState> navigatorKey;

  AuthState _currentState = AuthState.loading();

  NavigatorExampleRouteDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  AuthState get currentConfiguration => _currentState;

  List<Page<dynamic>> _getPages(BuildContext context) {
    List<Page<dynamic>> pages = [LoadingPage()]; //default

    _currentState.when(
      loggedOut: () {
        pages = [LoginPage()];
      },
      loggedIn: () {
        pages = [HomePage()];
      },
      loading: () {
        pages = [LoadingPage()];
      },
    );

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      cubit: BlocProvider.of<AuthCubit>(context),
      listener: (BuildContext context, AuthState state) {
        _currentState = state;
        notifyListeners();
      },
      child: Navigator(
        pages: _getPages(context),
        onPopPage: (route, result) {
          //we dont' want to pop any further than this navigator
          return false;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(AuthState configuration) async {
    _currentState = configuration;
  }
}
