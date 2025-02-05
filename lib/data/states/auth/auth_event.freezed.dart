// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) loggedIn,
    required TResult Function(Exception? error) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? loggedIn,
    TResult? Function(Exception? error)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? loggedIn,
    TResult Function(Exception? error)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthLoggedInImplCopyWith<$Res> {
  factory _$$AuthLoggedInImplCopyWith(
          _$AuthLoggedInImpl value, $Res Function(_$AuthLoggedInImpl) then) =
      __$$AuthLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AuthLoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoggedInImpl>
    implements _$$AuthLoggedInImplCopyWith<$Res> {
  __$$AuthLoggedInImplCopyWithImpl(
      _$AuthLoggedInImpl _value, $Res Function(_$AuthLoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AuthLoggedInImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$AuthLoggedInImpl implements AuthLoggedIn {
  const _$AuthLoggedInImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoggedInImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoggedInImplCopyWith<_$AuthLoggedInImpl> get copyWith =>
      __$$AuthLoggedInImplCopyWithImpl<_$AuthLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) loggedIn,
    required TResult Function(Exception? error) loggedOut,
  }) {
    return loggedIn(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? loggedIn,
    TResult? Function(Exception? error)? loggedOut,
  }) {
    return loggedIn?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? loggedIn,
    TResult Function(Exception? error)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthEvent {
  const factory AuthLoggedIn(final Account account) = _$AuthLoggedInImpl;

  Account get account;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoggedInImplCopyWith<_$AuthLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoggedOutImplCopyWith<$Res> {
  factory _$$AuthLoggedOutImplCopyWith(
          _$AuthLoggedOutImpl value, $Res Function(_$AuthLoggedOutImpl) then) =
      __$$AuthLoggedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? error});
}

/// @nodoc
class __$$AuthLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLoggedOutImpl>
    implements _$$AuthLoggedOutImplCopyWith<$Res> {
  __$$AuthLoggedOutImplCopyWithImpl(
      _$AuthLoggedOutImpl _value, $Res Function(_$AuthLoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthLoggedOutImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$AuthLoggedOutImpl implements AuthLoggedOut {
  const _$AuthLoggedOutImpl([this.error]);

  @override
  final Exception? error;

  @override
  String toString() {
    return 'AuthEvent.loggedOut(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoggedOutImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoggedOutImplCopyWith<_$AuthLoggedOutImpl> get copyWith =>
      __$$AuthLoggedOutImplCopyWithImpl<_$AuthLoggedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) loggedIn,
    required TResult Function(Exception? error) loggedOut,
  }) {
    return loggedOut(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? loggedIn,
    TResult? Function(Exception? error)? loggedOut,
  }) {
    return loggedOut?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? loggedIn,
    TResult Function(Exception? error)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedOut implements AuthEvent {
  const factory AuthLoggedOut([final Exception? error]) = _$AuthLoggedOutImpl;

  Exception? get error;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoggedOutImplCopyWith<_$AuthLoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
