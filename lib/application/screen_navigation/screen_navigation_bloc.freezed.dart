// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pressedPage) chanagePage,
    required TResult Function() checkNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pressedPage)? chanagePage,
    TResult? Function()? checkNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pressedPage)? chanagePage,
    TResult Function()? checkNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChanagePage value) chanagePage,
    required TResult Function(CheckNotification value) checkNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChanagePage value)? chanagePage,
    TResult? Function(CheckNotification value)? checkNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChanagePage value)? chanagePage,
    TResult Function(CheckNotification value)? checkNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenNavigationEventCopyWith<$Res> {
  factory $ScreenNavigationEventCopyWith(ScreenNavigationEvent value,
          $Res Function(ScreenNavigationEvent) then) =
      _$ScreenNavigationEventCopyWithImpl<$Res, ScreenNavigationEvent>;
}

/// @nodoc
class _$ScreenNavigationEventCopyWithImpl<$Res,
        $Val extends ScreenNavigationEvent>
    implements $ScreenNavigationEventCopyWith<$Res> {
  _$ScreenNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChanagePageCopyWith<$Res> {
  factory _$$ChanagePageCopyWith(
          _$ChanagePage value, $Res Function(_$ChanagePage) then) =
      __$$ChanagePageCopyWithImpl<$Res>;
  @useResult
  $Res call({int pressedPage});
}

/// @nodoc
class __$$ChanagePageCopyWithImpl<$Res>
    extends _$ScreenNavigationEventCopyWithImpl<$Res, _$ChanagePage>
    implements _$$ChanagePageCopyWith<$Res> {
  __$$ChanagePageCopyWithImpl(
      _$ChanagePage _value, $Res Function(_$ChanagePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pressedPage = null,
  }) {
    return _then(_$ChanagePage(
      pressedPage: null == pressedPage
          ? _value.pressedPage
          : pressedPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChanagePage implements ChanagePage {
  const _$ChanagePage({required this.pressedPage});

  @override
  final int pressedPage;

  @override
  String toString() {
    return 'ScreenNavigationEvent.chanagePage(pressedPage: $pressedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChanagePage &&
            (identical(other.pressedPage, pressedPage) ||
                other.pressedPage == pressedPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pressedPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChanagePageCopyWith<_$ChanagePage> get copyWith =>
      __$$ChanagePageCopyWithImpl<_$ChanagePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pressedPage) chanagePage,
    required TResult Function() checkNotification,
  }) {
    return chanagePage(pressedPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pressedPage)? chanagePage,
    TResult? Function()? checkNotification,
  }) {
    return chanagePage?.call(pressedPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pressedPage)? chanagePage,
    TResult Function()? checkNotification,
    required TResult orElse(),
  }) {
    if (chanagePage != null) {
      return chanagePage(pressedPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChanagePage value) chanagePage,
    required TResult Function(CheckNotification value) checkNotification,
  }) {
    return chanagePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChanagePage value)? chanagePage,
    TResult? Function(CheckNotification value)? checkNotification,
  }) {
    return chanagePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChanagePage value)? chanagePage,
    TResult Function(CheckNotification value)? checkNotification,
    required TResult orElse(),
  }) {
    if (chanagePage != null) {
      return chanagePage(this);
    }
    return orElse();
  }
}

abstract class ChanagePage implements ScreenNavigationEvent {
  const factory ChanagePage({required final int pressedPage}) = _$ChanagePage;

  int get pressedPage;
  @JsonKey(ignore: true)
  _$$ChanagePageCopyWith<_$ChanagePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckNotificationCopyWith<$Res> {
  factory _$$CheckNotificationCopyWith(
          _$CheckNotification value, $Res Function(_$CheckNotification) then) =
      __$$CheckNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckNotificationCopyWithImpl<$Res>
    extends _$ScreenNavigationEventCopyWithImpl<$Res, _$CheckNotification>
    implements _$$CheckNotificationCopyWith<$Res> {
  __$$CheckNotificationCopyWithImpl(
      _$CheckNotification _value, $Res Function(_$CheckNotification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckNotification implements CheckNotification {
  const _$CheckNotification();

  @override
  String toString() {
    return 'ScreenNavigationEvent.checkNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pressedPage) chanagePage,
    required TResult Function() checkNotification,
  }) {
    return checkNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pressedPage)? chanagePage,
    TResult? Function()? checkNotification,
  }) {
    return checkNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pressedPage)? chanagePage,
    TResult Function()? checkNotification,
    required TResult orElse(),
  }) {
    if (checkNotification != null) {
      return checkNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChanagePage value) chanagePage,
    required TResult Function(CheckNotification value) checkNotification,
  }) {
    return checkNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChanagePage value)? chanagePage,
    TResult? Function(CheckNotification value)? checkNotification,
  }) {
    return checkNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChanagePage value)? chanagePage,
    TResult Function(CheckNotification value)? checkNotification,
    required TResult orElse(),
  }) {
    if (checkNotification != null) {
      return checkNotification(this);
    }
    return orElse();
  }
}

abstract class CheckNotification implements ScreenNavigationEvent {
  const factory CheckNotification() = _$CheckNotification;
}

/// @nodoc
mixin _$ScreenNavigationState {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenNavigationStateCopyWith<ScreenNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenNavigationStateCopyWith<$Res> {
  factory $ScreenNavigationStateCopyWith(ScreenNavigationState value,
          $Res Function(ScreenNavigationState) then) =
      _$ScreenNavigationStateCopyWithImpl<$Res, ScreenNavigationState>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$ScreenNavigationStateCopyWithImpl<$Res,
        $Val extends ScreenNavigationState>
    implements $ScreenNavigationStateCopyWith<$Res> {
  _$ScreenNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenNavigationStateCopyWith<$Res>
    implements $ScreenNavigationStateCopyWith<$Res> {
  factory _$$_ScreenNavigationStateCopyWith(_$_ScreenNavigationState value,
          $Res Function(_$_ScreenNavigationState) then) =
      __$$_ScreenNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_ScreenNavigationStateCopyWithImpl<$Res>
    extends _$ScreenNavigationStateCopyWithImpl<$Res, _$_ScreenNavigationState>
    implements _$$_ScreenNavigationStateCopyWith<$Res> {
  __$$_ScreenNavigationStateCopyWithImpl(_$_ScreenNavigationState _value,
      $Res Function(_$_ScreenNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_ScreenNavigationState(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenNavigationState implements _ScreenNavigationState {
  const _$_ScreenNavigationState({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'ScreenNavigationState(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenNavigationState &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenNavigationStateCopyWith<_$_ScreenNavigationState> get copyWith =>
      __$$_ScreenNavigationStateCopyWithImpl<_$_ScreenNavigationState>(
          this, _$identity);
}

abstract class _ScreenNavigationState implements ScreenNavigationState {
  const factory _ScreenNavigationState({required final int page}) =
      _$_ScreenNavigationState;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenNavigationStateCopyWith<_$_ScreenNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
