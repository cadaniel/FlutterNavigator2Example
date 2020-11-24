// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartState call(List<Product> itemsInCard) {
    return _CartState(
      itemsInCard,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<Product> get itemsInCard;

  $CartStateCopyWith<CartState> get copyWith;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<Product> itemsInCard});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object itemsInCard = freezed,
  }) {
    return _then(_value.copyWith(
      itemsInCard: itemsInCard == freezed
          ? _value.itemsInCard
          : itemsInCard as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> itemsInCard});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object itemsInCard = freezed,
  }) {
    return _then(_CartState(
      itemsInCard == freezed
          ? _value.itemsInCard
          : itemsInCard as List<Product>,
    ));
  }
}

/// @nodoc
class _$_CartState implements _CartState {
  _$_CartState(this.itemsInCard) : assert(itemsInCard != null);

  @override
  final List<Product> itemsInCard;

  @override
  String toString() {
    return 'CartState(itemsInCard: $itemsInCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.itemsInCard, itemsInCard) ||
                const DeepCollectionEquality()
                    .equals(other.itemsInCard, itemsInCard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemsInCard);

  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState(List<Product> itemsInCard) = _$_CartState;

  @override
  List<Product> get itemsInCard;
  @override
  _$CartStateCopyWith<_CartState> get copyWith;
}
