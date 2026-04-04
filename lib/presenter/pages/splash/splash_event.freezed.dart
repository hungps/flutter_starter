// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SplashEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SplashEvent()';
  }
}

/// @nodoc
class $SplashEventCopyWith<$Res> {
  $SplashEventCopyWith(SplashEvent _, $Res Function(SplashEvent) __);
}

/// Adds pattern-matching-related methods to [SplashEvent].
extension SplashEventPatterns on SplashEvent {
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
    TResult Function(SplashVerifyLoginStatusStarted value)?
        verifyLoginStatusStarted,
    TResult Function(SplashErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted()
          when verifyLoginStatusStarted != null:
        return verifyLoginStatusStarted(_that);
      case SplashErrorOccurred() when errorOccurred != null:
        return errorOccurred(_that);
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
    required TResult Function(SplashVerifyLoginStatusStarted value)
        verifyLoginStatusStarted,
    required TResult Function(SplashErrorOccurred value) errorOccurred,
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted():
        return verifyLoginStatusStarted(_that);
      case SplashErrorOccurred():
        return errorOccurred(_that);
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
    TResult? Function(SplashVerifyLoginStatusStarted value)?
        verifyLoginStatusStarted,
    TResult? Function(SplashErrorOccurred value)? errorOccurred,
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted()
          when verifyLoginStatusStarted != null:
        return verifyLoginStatusStarted(_that);
      case SplashErrorOccurred() when errorOccurred != null:
        return errorOccurred(_that);
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
    TResult Function()? verifyLoginStatusStarted,
    TResult Function(BaseException? error)? errorOccurred,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted()
          when verifyLoginStatusStarted != null:
        return verifyLoginStatusStarted();
      case SplashErrorOccurred() when errorOccurred != null:
        return errorOccurred(_that.error);
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
    required TResult Function() verifyLoginStatusStarted,
    required TResult Function(BaseException? error) errorOccurred,
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted():
        return verifyLoginStatusStarted();
      case SplashErrorOccurred():
        return errorOccurred(_that.error);
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
    TResult? Function()? verifyLoginStatusStarted,
    TResult? Function(BaseException? error)? errorOccurred,
  }) {
    final _that = this;
    switch (_that) {
      case SplashVerifyLoginStatusStarted()
          when verifyLoginStatusStarted != null:
        return verifyLoginStatusStarted();
      case SplashErrorOccurred() when errorOccurred != null:
        return errorOccurred(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SplashVerifyLoginStatusStarted implements SplashEvent {
  const SplashVerifyLoginStatusStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashVerifyLoginStatusStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SplashEvent.verifyLoginStatusStarted()';
  }
}

/// @nodoc

class SplashErrorOccurred implements SplashEvent {
  const SplashErrorOccurred([this.error]);

  final BaseException? error;

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashErrorOccurredCopyWith<SplashErrorOccurred> get copyWith =>
      _$SplashErrorOccurredCopyWithImpl<SplashErrorOccurred>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashErrorOccurred &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SplashEvent.errorOccurred(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SplashErrorOccurredCopyWith<$Res>
    implements $SplashEventCopyWith<$Res> {
  factory $SplashErrorOccurredCopyWith(
          SplashErrorOccurred value, $Res Function(SplashErrorOccurred) _then) =
      _$SplashErrorOccurredCopyWithImpl;
  @useResult
  $Res call({BaseException? error});
}

/// @nodoc
class _$SplashErrorOccurredCopyWithImpl<$Res>
    implements $SplashErrorOccurredCopyWith<$Res> {
  _$SplashErrorOccurredCopyWithImpl(this._self, this._then);

  final SplashErrorOccurred _self;
  final $Res Function(SplashErrorOccurred) _then;

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SplashErrorOccurred(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseException?,
    ));
  }
}

// dart format on
