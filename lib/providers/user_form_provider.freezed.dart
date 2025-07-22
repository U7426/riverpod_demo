// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserFormData {

 String get name; Gender get gender; int get age;
/// Create a copy of UserFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserFormDataCopyWith<UserFormData> get copyWith => _$UserFormDataCopyWithImpl<UserFormData>(this as UserFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,gender,age);

@override
String toString() {
  return 'UserFormData(name: $name, gender: $gender, age: $age)';
}


}

/// @nodoc
abstract mixin class $UserFormDataCopyWith<$Res>  {
  factory $UserFormDataCopyWith(UserFormData value, $Res Function(UserFormData) _then) = _$UserFormDataCopyWithImpl;
@useResult
$Res call({
 String name, Gender gender, int age
});




}
/// @nodoc
class _$UserFormDataCopyWithImpl<$Res>
    implements $UserFormDataCopyWith<$Res> {
  _$UserFormDataCopyWithImpl(this._self, this._then);

  final UserFormData _self;
  final $Res Function(UserFormData) _then;

/// Create a copy of UserFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? gender = null,Object? age = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserFormData].
extension UserFormDataPatterns on UserFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserFormData value)  $default,){
final _that = this;
switch (_that) {
case _UserFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserFormData value)?  $default,){
final _that = this;
switch (_that) {
case _UserFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  Gender gender,  int age)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserFormData() when $default != null:
return $default(_that.name,_that.gender,_that.age);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  Gender gender,  int age)  $default,) {final _that = this;
switch (_that) {
case _UserFormData():
return $default(_that.name,_that.gender,_that.age);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  Gender gender,  int age)?  $default,) {final _that = this;
switch (_that) {
case _UserFormData() when $default != null:
return $default(_that.name,_that.gender,_that.age);case _:
  return null;

}
}

}

/// @nodoc


class _UserFormData implements UserFormData {
  const _UserFormData({required this.name, required this.gender, required this.age});
  

@override final  String name;
@override final  Gender gender;
@override final  int age;

/// Create a copy of UserFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserFormDataCopyWith<_UserFormData> get copyWith => __$UserFormDataCopyWithImpl<_UserFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,name,gender,age);

@override
String toString() {
  return 'UserFormData(name: $name, gender: $gender, age: $age)';
}


}

/// @nodoc
abstract mixin class _$UserFormDataCopyWith<$Res> implements $UserFormDataCopyWith<$Res> {
  factory _$UserFormDataCopyWith(_UserFormData value, $Res Function(_UserFormData) _then) = __$UserFormDataCopyWithImpl;
@override @useResult
$Res call({
 String name, Gender gender, int age
});




}
/// @nodoc
class __$UserFormDataCopyWithImpl<$Res>
    implements _$UserFormDataCopyWith<$Res> {
  __$UserFormDataCopyWithImpl(this._self, this._then);

  final _UserFormData _self;
  final $Res Function(_UserFormData) _then;

/// Create a copy of UserFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? gender = null,Object? age = null,}) {
  return _then(_UserFormData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
