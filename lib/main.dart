import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:navigator_example/injectible/injectible_init.dart';
import 'package:navigator_example/ui/cart/auth_cubit.dart';
import 'package:navigator_example/ui/main/navigation/navigator_example_inforamtion_parser.dart';
import 'package:navigator_example/ui/main/navigation/navigator_example_router_delegate.dart';

void main() {
  configureDependencies();
  runApp(NavigatorExample());
}

class NavigatorExample extends StatefulWidget {
  @override
  _NavigatorExampleState createState() => _NavigatorExampleState();
}

class _NavigatorExampleState extends State<NavigatorExample> {
  final authBloc = GetIt.instance.get<AuthCubit>();
  final NavigatorExampleRouteDelegate routeDelegate =
      NavigatorExampleRouteDelegate();
  final NavigatorExampleInformationParser informationParser =
      NavigatorExampleInformationParser();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: authBloc,
      child: BlocBuilder(
        cubit: authBloc,
        builder: (BuildContext context, _) {
          return MaterialApp.router(
            routeInformationParser: informationParser,
            routerDelegate: routeDelegate,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
