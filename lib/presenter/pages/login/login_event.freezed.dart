// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStarted value)? loginStarted,
    TResult Function(LoginErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartedCopyWith<$Res> {
  factory _$$LoginStartedCopyWith(
          _$LoginStarted value, $Res Function(_$LoginStarted) then) =
      __$$LoginStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams params});

  $LoginParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$LoginStartedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginStarted>
    implements _$$LoginStartedCopyWith<$Res> {
  __$$LoginStartedCopyWithImpl(
      _$LoginStarted _value, $Res Function(_$LoginStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$LoginStarted(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<$Res> get params {
    return $LoginParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$LoginStarted implements LoginStarted {
  const _$LoginStarted(this.params);

  @override
  final LoginParams params;

  @override
  String toString() {
    return 'LoginEvent.loginStarted(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStarted &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartedCopyWith<_$LoginStarted> get copyWith =>
      __$$LoginStartedCopyWithImpl<_$LoginStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return loginStarted(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return loginStarted?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return loginStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStarted value)? loginStarted,
    TResult Function(LoginErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(this);
    }
    return orElse();
  }
}

abstract class LoginStarted implements LoginEvent {
  const factory LoginStarted(final LoginParams params) = _$LoginStarted;

  LoginParams get params;
  @JsonKey(ignore: true)
  _$$LoginStartedCopyWith<_$LoginStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorOccurredCopyWith<$Res> {
  factory _$$LoginErrorOccurredCopyWith(_$LoginErrorOccurred value,
          $Res Function(_$LoginErrorOccurred) then) =
      __$$LoginErrorOccurredCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseException<dynamic>? error});
}

/// @nodoc
class __$$LoginErrorOccurredCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginErrorOccurred>
    implements _$$LoginErrorOccurredCopyWith<$Res> {
  __$$LoginErrorOccurredCopyWithImpl(
      _$LoginErrorOccurred _value, $Res Function(_$LoginErrorOccurred) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoginErrorOccurred(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseException<dynamic>?,
    ));
  }
}

/// @nodoc

class _$LoginErrorOccurred implements LoginErrorOccurred {
  const _$LoginErrorOccurred([this.error]);

  @override
  final BaseException<dynamic>? error;

  @override
  String toString() {
    return 'LoginEvent.errorOccurred(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorOccurred &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorOccurredCopyWith<_$LoginErrorOccurred> get copyWith =>
      __$$LoginErrorOccurredCopyWithImpl<_$LoginErrorOccurred>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return errorOccurred(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return errorOccurred?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return errorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return errorOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStarted value)? loginStarted,
    TResult Function(LoginErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(this);
    }
    return orElse();
  }
}

abstract class LoginErrorOccurred implements LoginEvent {
  const factory LoginErrorOccurred([final BaseException<dynamic>? error]) =
      _$LoginErrorOccurred;

  BaseException<dynamic>? get error;
  @JsonKey(ignore: true)
  _$$LoginErrorOccurredCopyWith<_$LoginErrorOccurred> get copyWith =>
      throw _privateConstructorUsedError;
}
