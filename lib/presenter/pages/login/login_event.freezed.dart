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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) usernameChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUsernameChanged value)? usernameChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? usernameChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
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

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginUsernameChangedImplCopyWith<$Res> {
  factory _$$LoginUsernameChangedImplCopyWith(_$LoginUsernameChangedImpl value,
          $Res Function(_$LoginUsernameChangedImpl) then) =
      __$$LoginUsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$LoginUsernameChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginUsernameChangedImpl>
    implements _$$LoginUsernameChangedImplCopyWith<$Res> {
  __$$LoginUsernameChangedImplCopyWithImpl(_$LoginUsernameChangedImpl _value,
      $Res Function(_$LoginUsernameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$LoginUsernameChangedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUsernameChangedImpl implements LoginUsernameChanged {
  const _$LoginUsernameChangedImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUsernameChangedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUsernameChangedImplCopyWith<_$LoginUsernameChangedImpl>
      get copyWith =>
          __$$LoginUsernameChangedImplCopyWithImpl<_$LoginUsernameChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) usernameChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUsernameChanged value)? usernameChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? usernameChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginStarted value)? loginStarted,
    TResult Function(LoginErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class LoginUsernameChanged implements LoginEvent {
  const factory LoginUsernameChanged(final String username) =
      _$LoginUsernameChangedImpl;

  String get username;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUsernameChangedImplCopyWith<_$LoginUsernameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPasswordChangedImplCopyWith<$Res> {
  factory _$$LoginPasswordChangedImplCopyWith(_$LoginPasswordChangedImpl value,
          $Res Function(_$LoginPasswordChangedImpl) then) =
      __$$LoginPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$LoginPasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginPasswordChangedImpl>
    implements _$$LoginPasswordChangedImplCopyWith<$Res> {
  __$$LoginPasswordChangedImplCopyWithImpl(_$LoginPasswordChangedImpl _value,
      $Res Function(_$LoginPasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$LoginPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChangedImpl implements LoginPasswordChanged {
  const _$LoginPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith =>
          __$$LoginPasswordChangedImplCopyWithImpl<_$LoginPasswordChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) usernameChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUsernameChanged value)? usernameChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? usernameChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginStarted value)? loginStarted,
    TResult Function(LoginErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChanged implements LoginEvent {
  const factory LoginPasswordChanged(final String password) =
      _$LoginPasswordChangedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStartedImplCopyWith<$Res> {
  factory _$$LoginStartedImplCopyWith(
          _$LoginStartedImpl value, $Res Function(_$LoginStartedImpl) then) =
      __$$LoginStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginStartedImpl>
    implements _$$LoginStartedImplCopyWith<$Res> {
  __$$LoginStartedImplCopyWithImpl(
      _$LoginStartedImpl _value, $Res Function(_$LoginStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginStartedImpl implements LoginStarted {
  const _$LoginStartedImpl();

  @override
  String toString() {
    return 'LoginEvent.loginStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return loginStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return loginStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginStarted,
    TResult Function(BaseException<dynamic>? error)? errorOccurred,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) usernameChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUsernameChanged value)? usernameChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return loginStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? usernameChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
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
  const factory LoginStarted() = _$LoginStartedImpl;
}

/// @nodoc
abstract class _$$LoginErrorOccurredImplCopyWith<$Res> {
  factory _$$LoginErrorOccurredImplCopyWith(_$LoginErrorOccurredImpl value,
          $Res Function(_$LoginErrorOccurredImpl) then) =
      __$$LoginErrorOccurredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseException<dynamic>? error});
}

/// @nodoc
class __$$LoginErrorOccurredImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginErrorOccurredImpl>
    implements _$$LoginErrorOccurredImplCopyWith<$Res> {
  __$$LoginErrorOccurredImplCopyWithImpl(_$LoginErrorOccurredImpl _value,
      $Res Function(_$LoginErrorOccurredImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoginErrorOccurredImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseException<dynamic>?,
    ));
  }
}

/// @nodoc

class _$LoginErrorOccurredImpl implements LoginErrorOccurred {
  const _$LoginErrorOccurredImpl([this.error]);

  @override
  final BaseException<dynamic>? error;

  @override
  String toString() {
    return 'LoginEvent.errorOccurred(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorOccurredImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorOccurredImplCopyWith<_$LoginErrorOccurredImpl> get copyWith =>
      __$$LoginErrorOccurredImplCopyWithImpl<_$LoginErrorOccurredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginStarted,
    required TResult Function(BaseException<dynamic>? error) errorOccurred,
  }) {
    return errorOccurred(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? loginStarted,
    TResult? Function(BaseException<dynamic>? error)? errorOccurred,
  }) {
    return errorOccurred?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginStarted,
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
    required TResult Function(LoginUsernameChanged value) usernameChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginStarted value) loginStarted,
    required TResult Function(LoginErrorOccurred value) errorOccurred,
  }) {
    return errorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUsernameChanged value)? usernameChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginStarted value)? loginStarted,
    TResult? Function(LoginErrorOccurred value)? errorOccurred,
  }) {
    return errorOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? usernameChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
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
      _$LoginErrorOccurredImpl;

  BaseException<dynamic>? get error;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorOccurredImplCopyWith<_$LoginErrorOccurredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
