// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshActivity {

 List<int> get activity; String get type; int get participants; double get price;
/// Create a copy of RefreshActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshActivityCopyWith<RefreshActivity> get copyWith => _$RefreshActivityCopyWithImpl<RefreshActivity>(this as RefreshActivity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshActivity&&const DeepCollectionEquality().equals(other.activity, activity)&&(identical(other.type, type) || other.type == type)&&(identical(other.participants, participants) || other.participants == participants)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(activity),type,participants,price);

@override
String toString() {
  return 'RefreshActivity(activity: $activity, type: $type, participants: $participants, price: $price)';
}


}

/// @nodoc
abstract mixin class $RefreshActivityCopyWith<$Res>  {
  factory $RefreshActivityCopyWith(RefreshActivity value, $Res Function(RefreshActivity) _then) = _$RefreshActivityCopyWithImpl;
@useResult
$Res call({
 List<int> activity, String type, int participants, double price
});




}
/// @nodoc
class _$RefreshActivityCopyWithImpl<$Res>
    implements $RefreshActivityCopyWith<$Res> {
  _$RefreshActivityCopyWithImpl(this._self, this._then);

  final RefreshActivity _self;
  final $Res Function(RefreshActivity) _then;

/// Create a copy of RefreshActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activity = null,Object? type = null,Object? participants = null,Object? price = null,}) {
  return _then(_self.copyWith(
activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as List<int>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshActivity].
extension RefreshActivityPatterns on RefreshActivity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshActivity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshActivity value)  $default,){
final _that = this;
switch (_that) {
case _RefreshActivity():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshActivity value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshActivity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> activity,  String type,  int participants,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshActivity() when $default != null:
return $default(_that.activity,_that.type,_that.participants,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> activity,  String type,  int participants,  double price)  $default,) {final _that = this;
switch (_that) {
case _RefreshActivity():
return $default(_that.activity,_that.type,_that.participants,_that.price);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> activity,  String type,  int participants,  double price)?  $default,) {final _that = this;
switch (_that) {
case _RefreshActivity() when $default != null:
return $default(_that.activity,_that.type,_that.participants,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _RefreshActivity implements RefreshActivity {
   _RefreshActivity({required final  List<int> activity, required this.type, required this.participants, required this.price}): _activity = activity;
  

 final  List<int> _activity;
@override List<int> get activity {
  if (_activity is EqualUnmodifiableListView) return _activity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activity);
}

@override final  String type;
@override final  int participants;
@override final  double price;

/// Create a copy of RefreshActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshActivityCopyWith<_RefreshActivity> get copyWith => __$RefreshActivityCopyWithImpl<_RefreshActivity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshActivity&&const DeepCollectionEquality().equals(other._activity, _activity)&&(identical(other.type, type) || other.type == type)&&(identical(other.participants, participants) || other.participants == participants)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activity),type,participants,price);

@override
String toString() {
  return 'RefreshActivity(activity: $activity, type: $type, participants: $participants, price: $price)';
}


}

/// @nodoc
abstract mixin class _$RefreshActivityCopyWith<$Res> implements $RefreshActivityCopyWith<$Res> {
  factory _$RefreshActivityCopyWith(_RefreshActivity value, $Res Function(_RefreshActivity) _then) = __$RefreshActivityCopyWithImpl;
@override @useResult
$Res call({
 List<int> activity, String type, int participants, double price
});




}
/// @nodoc
class __$RefreshActivityCopyWithImpl<$Res>
    implements _$RefreshActivityCopyWith<$Res> {
  __$RefreshActivityCopyWithImpl(this._self, this._then);

  final _RefreshActivity _self;
  final $Res Function(_RefreshActivity) _then;

/// Create a copy of RefreshActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activity = null,Object? type = null,Object? participants = null,Object? price = null,}) {
  return _then(_RefreshActivity(
activity: null == activity ? _self._activity : activity // ignore: cast_nullable_to_non_nullable
as List<int>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
