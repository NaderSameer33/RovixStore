// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ThemeModeChange value)?  themeModeChange,TResult Function( LanguageChangeState value)?  languageChangeState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ThemeModeChange() when themeModeChange != null:
return themeModeChange(_that);case LanguageChangeState() when languageChangeState != null:
return languageChangeState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ThemeModeChange value)  themeModeChange,required TResult Function( LanguageChangeState value)  languageChangeState,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ThemeModeChange():
return themeModeChange(_that);case LanguageChangeState():
return languageChangeState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ThemeModeChange value)?  themeModeChange,TResult? Function( LanguageChangeState value)?  languageChangeState,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ThemeModeChange() when themeModeChange != null:
return themeModeChange(_that);case LanguageChangeState() when languageChangeState != null:
return languageChangeState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isDark)?  themeModeChange,TResult Function( Locale locale)?  languageChangeState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ThemeModeChange() when themeModeChange != null:
return themeModeChange(_that.isDark);case LanguageChangeState() when languageChangeState != null:
return languageChangeState(_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isDark)  themeModeChange,required TResult Function( Locale locale)  languageChangeState,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ThemeModeChange():
return themeModeChange(_that.isDark);case LanguageChangeState():
return languageChangeState(_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isDark)?  themeModeChange,TResult? Function( Locale locale)?  languageChangeState,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ThemeModeChange() when themeModeChange != null:
return themeModeChange(_that.isDark);case LanguageChangeState() when languageChangeState != null:
return languageChangeState(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _Initial extends AppState {
  const _Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.initial()';
}


}




/// @nodoc


class ThemeModeChange extends AppState {
  const ThemeModeChange({required this.isDark}): super._();
  

 final  bool isDark;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeModeChangeCopyWith<ThemeModeChange> get copyWith => _$ThemeModeChangeCopyWithImpl<ThemeModeChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeModeChange&&(identical(other.isDark, isDark) || other.isDark == isDark));
}


@override
int get hashCode => Object.hash(runtimeType,isDark);

@override
String toString() {
  return 'AppState.themeModeChange(isDark: $isDark)';
}


}

/// @nodoc
abstract mixin class $ThemeModeChangeCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $ThemeModeChangeCopyWith(ThemeModeChange value, $Res Function(ThemeModeChange) _then) = _$ThemeModeChangeCopyWithImpl;
@useResult
$Res call({
 bool isDark
});




}
/// @nodoc
class _$ThemeModeChangeCopyWithImpl<$Res>
    implements $ThemeModeChangeCopyWith<$Res> {
  _$ThemeModeChangeCopyWithImpl(this._self, this._then);

  final ThemeModeChange _self;
  final $Res Function(ThemeModeChange) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDark = null,}) {
  return _then(ThemeModeChange(
isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LanguageChangeState extends AppState {
  const LanguageChangeState({required this.locale}): super._();
  

 final  Locale locale;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageChangeStateCopyWith<LanguageChangeState> get copyWith => _$LanguageChangeStateCopyWithImpl<LanguageChangeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageChangeState&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppState.languageChangeState(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LanguageChangeStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $LanguageChangeStateCopyWith(LanguageChangeState value, $Res Function(LanguageChangeState) _then) = _$LanguageChangeStateCopyWithImpl;
@useResult
$Res call({
 Locale locale
});




}
/// @nodoc
class _$LanguageChangeStateCopyWithImpl<$Res>
    implements $LanguageChangeStateCopyWith<$Res> {
  _$LanguageChangeStateCopyWithImpl(this._self, this._then);

  final LanguageChangeState _self;
  final $Res Function(LanguageChangeState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LanguageChangeState(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
