// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenFavouriteEvent {
  String get playlistName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playlistName) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playlistName)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playlistName)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenFavouriteEventCopyWith<ScreenFavouriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenFavouriteEventCopyWith<$Res> {
  factory $ScreenFavouriteEventCopyWith(ScreenFavouriteEvent value,
          $Res Function(ScreenFavouriteEvent) then) =
      _$ScreenFavouriteEventCopyWithImpl<$Res, ScreenFavouriteEvent>;
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class _$ScreenFavouriteEventCopyWithImpl<$Res,
        $Val extends ScreenFavouriteEvent>
    implements $ScreenFavouriteEventCopyWith<$Res> {
  _$ScreenFavouriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_value.copyWith(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ScreenFavouriteEventCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ScreenFavouriteEventCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_$Initial(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required this.playlistName});

  @override
  final String playlistName;

  @override
  String toString() {
    return 'ScreenFavouriteEvent.initial(playlistName: $playlistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playlistName) initial,
  }) {
    return initial(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playlistName)? initial,
  }) {
    return initial?.call(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playlistName)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(playlistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ScreenFavouriteEvent {
  const factory Initial({required final String playlistName}) = _$Initial;

  @override
  String get playlistName;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScreenFavouriteState {
  List<Songs> get favSonglist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenFavouriteStateCopyWith<ScreenFavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenFavouriteStateCopyWith<$Res> {
  factory $ScreenFavouriteStateCopyWith(ScreenFavouriteState value,
          $Res Function(ScreenFavouriteState) then) =
      _$ScreenFavouriteStateCopyWithImpl<$Res, ScreenFavouriteState>;
  @useResult
  $Res call({List<Songs> favSonglist});
}

/// @nodoc
class _$ScreenFavouriteStateCopyWithImpl<$Res,
        $Val extends ScreenFavouriteState>
    implements $ScreenFavouriteStateCopyWith<$Res> {
  _$ScreenFavouriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSonglist = null,
  }) {
    return _then(_value.copyWith(
      favSonglist: null == favSonglist
          ? _value.favSonglist
          : favSonglist // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenFavouriteStateCopyWith<$Res>
    implements $ScreenFavouriteStateCopyWith<$Res> {
  factory _$$_ScreenFavouriteStateCopyWith(_$_ScreenFavouriteState value,
          $Res Function(_$_ScreenFavouriteState) then) =
      __$$_ScreenFavouriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> favSonglist});
}

/// @nodoc
class __$$_ScreenFavouriteStateCopyWithImpl<$Res>
    extends _$ScreenFavouriteStateCopyWithImpl<$Res, _$_ScreenFavouriteState>
    implements _$$_ScreenFavouriteStateCopyWith<$Res> {
  __$$_ScreenFavouriteStateCopyWithImpl(_$_ScreenFavouriteState _value,
      $Res Function(_$_ScreenFavouriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSonglist = null,
  }) {
    return _then(_$_ScreenFavouriteState(
      favSonglist: null == favSonglist
          ? _value._favSonglist
          : favSonglist // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_ScreenFavouriteState implements _ScreenFavouriteState {
  const _$_ScreenFavouriteState({required final List<Songs> favSonglist})
      : _favSonglist = favSonglist;

  final List<Songs> _favSonglist;
  @override
  List<Songs> get favSonglist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favSonglist);
  }

  @override
  String toString() {
    return 'ScreenFavouriteState(favSonglist: $favSonglist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenFavouriteState &&
            const DeepCollectionEquality()
                .equals(other._favSonglist, _favSonglist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favSonglist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenFavouriteStateCopyWith<_$_ScreenFavouriteState> get copyWith =>
      __$$_ScreenFavouriteStateCopyWithImpl<_$_ScreenFavouriteState>(
          this, _$identity);
}

abstract class _ScreenFavouriteState implements ScreenFavouriteState {
  const factory _ScreenFavouriteState(
      {required final List<Songs> favSonglist}) = _$_ScreenFavouriteState;

  @override
  List<Songs> get favSonglist;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenFavouriteStateCopyWith<_$_ScreenFavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
