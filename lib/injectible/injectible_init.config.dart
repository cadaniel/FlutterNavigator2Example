// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data/auth_service.dart';
import '../ui/cart/auth_cubit.dart';
import '../ui/home/cubit/cart/cart_cubit.dart';
import '../ui/home/cubit/home/home_cubit.dart';
import '../ui/home/products/cubit/products_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<CartCubit>(() => CartCubit());
  gh.factory<HomeCubit>(() => HomeCubit());
  gh.factory<ProductsCubit>(() => ProductsCubit());
  gh.factory<AuthCubit>(() => AuthCubit(get<AuthService>()));

  // Eager singletons must be registered in the right order
  gh.singleton<AuthService>(AuthService());
  return get;
}
