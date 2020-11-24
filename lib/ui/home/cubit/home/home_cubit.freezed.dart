// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _Products products() {
    return _Products();
  }

// ignore: unused_element
  _Product product(Product product) {
    return _Product(
      product,
    );
  }

// ignore: unused_element
  _Cart cart() {
    return _Cart();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult products(),
    @required TResult product(Product product),
    @required TResult cart(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult products(),
    TResult product(Product product),
    TResult cart(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult products(_Products value),
    @required TResult product(_Product value),
    @required TResult cart(_Cart value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult products(_Products value),
    TResult product(_Product value),
    TResult cart(_Cart value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$ProductsCopyWith<$Res> {
  factory _$ProductsCopyWith(_Products value, $Res Function(_Products) then) =
      __$ProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductsCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductsCopyWith<$Res> {
  __$ProductsCopyWithImpl(_Products _value, $Res Function(_Products) _then)
      : super(_value, (v) => _then(v as _Products));

  @override
  _Products get _value => super._value as _Products;
}

/// @nodoc
class _$_Products implements _Products {
  _$_Products();

  @override
  String toString() {
    return 'HomeState.products()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Products);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult products(),
    @required TResult product(Product product),
    @required TResult cart(),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return products();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult products(),
    TResult product(Product product),
    TResult cart(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (products != null) {
      return products();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult products(_Products value),
    @required TResult product(_Product value),
    @required TResult cart(_Cart value),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult products(_Products value),
    TResult product(_Product value),
    TResult cart(_Cart value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class _Products implements HomeState {
  factory _Products() = _$_Products;
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(_Product(
      product == freezed ? _value.product : product as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
class _$_Product implements _Product {
  _$_Product(this.product) : assert(product != null);

  @override
  final Product product;

  @override
  String toString() {
    return 'HomeState.product(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult products(),
    @required TResult product(Product product),
    @required TResult cart(),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return product(this.product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult products(),
    TResult product(Product product),
    TResult cart(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(this.product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult products(_Products value),
    @required TResult product(_Product value),
    @required TResult cart(_Cart value),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult products(_Products value),
    TResult product(_Product value),
    TResult cart(_Cart value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class _Product implements HomeState {
  factory _Product(Product product) = _$_Product;

  Product get product;
  _$ProductCopyWith<_Product> get copyWith;
}

/// @nodoc
abstract class _$CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;
}

/// @nodoc
class _$_Cart implements _Cart {
  _$_Cart();

  @override
  String toString() {
    return 'HomeState.cart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult products(),
    @required TResult product(Product product),
    @required TResult cart(),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return cart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult products(),
    TResult product(Product product),
    TResult cart(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cart != null) {
      return cart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult products(_Products value),
    @required TResult product(_Product value),
    @required TResult cart(_Cart value),
  }) {
    assert(products != null);
    assert(product != null);
    assert(cart != null);
    return cart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult products(_Products value),
    TResult product(_Product value),
    TResult cart(_Cart value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cart != null) {
      return cart(this);
    }
    return orElse();
  }
}

abstract class _Cart implements HomeState {
  factory _Cart() = _$_Cart;
}
