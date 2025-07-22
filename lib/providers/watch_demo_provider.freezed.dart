// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_demo_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopLevelData {

 String get name; int get count; bool get isActive;
/// Create a copy of TopLevelData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopLevelDataCopyWith<TopLevelData> get copyWith => _$TopLevelDataCopyWithImpl<TopLevelData>(this as TopLevelData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopLevelData&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,name,count,isActive);

@override
String toString() {
  return 'TopLevelData(name: $name, count: $count, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $TopLevelDataCopyWith<$Res>  {
  factory $TopLevelDataCopyWith(TopLevelData value, $Res Function(TopLevelData) _then) = _$TopLevelDataCopyWithImpl;
@useResult
$Res call({
 String name, int count, bool isActive
});




}
/// @nodoc
class _$TopLevelDataCopyWithImpl<$Res>
    implements $TopLevelDataCopyWith<$Res> {
  _$TopLevelDataCopyWithImpl(this._self, this._then);

  final TopLevelData _self;
  final $Res Function(TopLevelData) _then;

/// Create a copy of TopLevelData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? count = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TopLevelData].
extension TopLevelDataPatterns on TopLevelData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopLevelData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopLevelData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopLevelData value)  $default,){
final _that = this;
switch (_that) {
case _TopLevelData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopLevelData value)?  $default,){
final _that = this;
switch (_that) {
case _TopLevelData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int count,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopLevelData() when $default != null:
return $default(_that.name,_that.count,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int count,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _TopLevelData():
return $default(_that.name,_that.count,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int count,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _TopLevelData() when $default != null:
return $default(_that.name,_that.count,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _TopLevelData implements TopLevelData {
  const _TopLevelData({required this.name, required this.count, required this.isActive});
  

@override final  String name;
@override final  int count;
@override final  bool isActive;

/// Create a copy of TopLevelData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopLevelDataCopyWith<_TopLevelData> get copyWith => __$TopLevelDataCopyWithImpl<_TopLevelData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopLevelData&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,name,count,isActive);

@override
String toString() {
  return 'TopLevelData(name: $name, count: $count, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$TopLevelDataCopyWith<$Res> implements $TopLevelDataCopyWith<$Res> {
  factory _$TopLevelDataCopyWith(_TopLevelData value, $Res Function(_TopLevelData) _then) = __$TopLevelDataCopyWithImpl;
@override @useResult
$Res call({
 String name, int count, bool isActive
});




}
/// @nodoc
class __$TopLevelDataCopyWithImpl<$Res>
    implements _$TopLevelDataCopyWith<$Res> {
  __$TopLevelDataCopyWithImpl(this._self, this._then);

  final _TopLevelData _self;
  final $Res Function(_TopLevelData) _then;

/// Create a copy of TopLevelData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? count = null,Object? isActive = null,}) {
  return _then(_TopLevelData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
