import 'package:flutter/widgets.dart';
import 'package:navigator_example/ui/cart/auth_cubit.dart';

class NavigatorExampleInformationParser
    extends RouteInformationParser<AuthState> {
  @override
  Future<AuthState> parseRouteInformation(
      RouteInformation routeInformation) async {
    return AuthState.loggedOut();
  }

  @override
  RouteInformation restoreRouteInformation(AuthState path) {
    return RouteInformation(location: "/");
  }
}
