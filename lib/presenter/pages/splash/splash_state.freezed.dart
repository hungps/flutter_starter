// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashState {
  SplashStatus get status;
  Account? get account;
  BaseException? get error;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashStateCopyWith<SplashState> get copyWith =>
      _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, account, error);

  @override
  String toString() {
    return 'SplashState(status: $status, account: $account, error: $error)';
  }
}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) _then) =
      _$SplashStateCopyWithImpl;
  @useResult
  $Res call({SplashStatus status, Account? account, BaseException? error});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? account = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SplashStatus,
      account: freezed == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseException?,
    ));
  }

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_self.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_self.account!, (value) {
      return _then(_self.copyWith(account: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SplashState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SplashState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SplashState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplashState():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SplashState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplashState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SplashStatus status, Account? account, BaseException? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SplashState() when $default != null:
        return $default(_that.status, _that.account, _that.error);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            SplashStatus status, Account? account, BaseException? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplashState():
        return $default(_that.status, _that.account, _that.error);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            SplashStatus status, Account? account, BaseException? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplashState() when $default != null:
        return $default(_that.status, _that.account, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SplashState implements SplashState {
  const _SplashState(
      {this.status = SplashStatus.loading, this.account, this.error});

  @override
  @JsonKey()
  final SplashStatus status;
  @override
  final Account? account;
  @override
  final BaseException? error;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, account, error);

  @override
  String toString() {
    return 'SplashState(status: $status, account: $account, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) _then) =
      __$SplashStateCopyWithImpl;
  @override
  @useResult
  $Res call({SplashStatus status, Account? account, BaseException? error});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(this._self, this._then);

  final _SplashState _self;
  final $Res Function(_SplashState) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? account = freezed,
    Object? error = freezed,
  }) {
    return _then(_SplashState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SplashStatus,
      account: freezed == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseException?,
    ));
  }

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_self.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_self.account!, (value) {
      return _then(_self.copyWith(account: value));
    });
  }
}

// dart format on
