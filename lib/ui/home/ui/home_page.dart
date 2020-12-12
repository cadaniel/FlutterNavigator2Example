import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:navigator_example/ui/common/platform_page.dart';
import 'package:navigator_example/ui/home/cubit/cart/cart_cubit.dart';
import 'package:navigator_example/ui/home/cubit/home/home_cubit.dart';
import 'package:navigator_example/ui/home/navigation/home_inforamtion_parser.dart';
import 'package:navigator_example/ui/home/navigation/home_route_information_provider.dart';
import 'package:navigator_example/ui/home/navigation/home_router_delegate.dart';

class HomePage extends PlatformPage {
  HomePage() : super(HomeWidget(), "/home");
}

class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance.get<HomeCubit>()),
        BlocProvider.value(value: GetIt.instance.get<CartCubit>()),
      ],
      child: Router(
        routeInformationProvider: HomeRouteInformationProvider(),
        routeInformationParser: HomeInformationParser(),
        routerDelegate: HomeRouterDelegate(),
      ),
    );
  }
}
