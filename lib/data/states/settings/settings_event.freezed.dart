// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsEvent {
  AppTheme get theme;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      _$SettingsEventCopyWithImpl<SettingsEvent>(
          this as SettingsEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsEvent &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @override
  String toString() {
    return 'SettingsEvent(theme: $theme)';
  }
}

/// @nodoc
abstract mixin class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) _then) =
      _$SettingsEventCopyWithImpl;
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._self, this._then);

  final SettingsEvent _self;
  final $Res Function(SettingsEvent) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_self.copyWith(
      theme: null == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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
    TResult Function(SettingsThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged() when themeChanged != null:
        return themeChanged(_that);
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
    required TResult Function(SettingsThemeChanged value) themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged():
        return themeChanged(_that);
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
    TResult? Function(SettingsThemeChanged value)? themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged() when themeChanged != null:
        return themeChanged(_that);
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
    TResult Function(AppTheme theme)? themeChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged() when themeChanged != null:
        return themeChanged(_that.theme);
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
    required TResult Function(AppTheme theme) themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged():
        return themeChanged(_that.theme);
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
    TResult? Function(AppTheme theme)? themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsThemeChanged() when themeChanged != null:
        return themeChanged(_that.theme);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SettingsThemeChanged implements SettingsEvent {
  const SettingsThemeChanged(this.theme);

  @override
  final AppTheme theme;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsThemeChangedCopyWith<SettingsThemeChanged> get copyWith =>
      _$SettingsThemeChangedCopyWithImpl<SettingsThemeChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsThemeChanged &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @override
  String toString() {
    return 'SettingsEvent.themeChanged(theme: $theme)';
  }
}

/// @nodoc
abstract mixin class $SettingsThemeChangedCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $SettingsThemeChangedCopyWith(SettingsThemeChanged value,
          $Res Function(SettingsThemeChanged) _then) =
      _$SettingsThemeChangedCopyWithImpl;
  @override
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class _$SettingsThemeChangedCopyWithImpl<$Res>
    implements $SettingsThemeChangedCopyWith<$Res> {
  _$SettingsThemeChangedCopyWithImpl(this._self, this._then);

  final SettingsThemeChanged _self;
  final $Res Function(SettingsThemeChanged) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? theme = null,
  }) {
    return _then(SettingsThemeChanged(
      null == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

// dart format on
