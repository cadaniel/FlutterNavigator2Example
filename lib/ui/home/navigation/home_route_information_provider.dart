import 'package:flutter/widgets.dart';

class HomeRouteInformationProvider extends RouteInformationProvider {
  List<Function> _listeners = [];
  @override
  void addListener(void Function() listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(void Function() listener) {
    _listeners.remove(listener);
  }

  @override
  RouteInformation get value => RouteInformation(location: "/");

  void notifyListeners() {
    for (Function function in _listeners) {
      function.call();
    }
  }
}
