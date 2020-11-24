import 'package:flutter/widgets.dart';
import 'package:navigator_example/ui/home/cubit/home/home_cubit.dart';

class HomeInformationParser extends RouteInformationParser<HomeState> {
  @override
  Future<HomeState> parseRouteInformation(RouteInformation routeInformation) {
    return Future.value(HomeState.products());
  }

  @override
  RouteInformation restoreRouteInformation(HomeState path) {
    return RouteInformation(location: "/");
  }
}
