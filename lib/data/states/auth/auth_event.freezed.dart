// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthLoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn():
        return loggedIn(_that);
      case AuthLoggedOut():
        return loggedOut(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that);
      case AuthLoggedOut() when loggedOut != null:
        return loggedOut(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? loggedIn,
    TResult Function(Exception? error)? loggedOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that.account);
      case AuthLoggedOut() when loggedOut != null:
        return loggedOut(_that.error);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) loggedIn,
    required TResult Function(Exception? error) loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn():
        return loggedIn(_that.account);
      case AuthLoggedOut():
        return loggedOut(_that.error);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? loggedIn,
    TResult? Function(Exception? error)? loggedOut,
  }) {
    final _that = this;
    switch (_that) {
      case AuthLoggedIn() when loggedIn != null:
        return loggedIn(_that.account);
      case AuthLoggedOut() when loggedOut != null:
        return loggedOut(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthLoggedIn implements AuthEvent {
  const AuthLoggedIn(this.account);

  final Account account;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      _$AuthLoggedInCopyWithImpl<AuthLoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedIn &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @override
  String toString() {
    return 'AuthEvent.loggedIn(account: $account)';
  }
}

/// @nodoc
abstract mixin class $AuthLoggedInCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) _then) =
      _$AuthLoggedInCopyWithImpl;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AuthLoggedInCopyWithImpl<$Res> implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(this._self, this._then);

  final AuthLoggedIn _self;
  final $Res Function(AuthLoggedIn) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? account = null,
  }) {
    return _then(AuthLoggedIn(
      null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_self.account, (value) {
      return _then(_self.copyWith(account: value));
    });
  }
}

/// @nodoc

class AuthLoggedOut implements AuthEvent {
  const AuthLoggedOut([this.error]);

  final Exception? error;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthLoggedOutCopyWith<AuthLoggedOut> get copyWith =>
      _$AuthLoggedOutCopyWithImpl<AuthLoggedOut>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedOut &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthEvent.loggedOut(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AuthLoggedOutCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $AuthLoggedOutCopyWith(
          AuthLoggedOut value, $Res Function(AuthLoggedOut) _then) =
      _$AuthLoggedOutCopyWithImpl;
  @useResult
  $Res call({Exception? error});
}

/// @nodoc
class _$AuthLoggedOutCopyWithImpl<$Res>
    implements $AuthLoggedOutCopyWith<$Res> {
  _$AuthLoggedOutCopyWithImpl(this._self, this._then);

  final AuthLoggedOut _self;
  final $Res Function(AuthLoggedOut) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthLoggedOut(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

// dart format on
