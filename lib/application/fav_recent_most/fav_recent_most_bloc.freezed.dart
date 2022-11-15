// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fav_recent_most_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavRecentMostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSongsList value) getSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSongsList value)? getSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSongsList value)? getSongsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavRecentMostEventCopyWith<$Res> {
  factory $FavRecentMostEventCopyWith(
          FavRecentMostEvent value, $Res Function(FavRecentMostEvent) then) =
      _$FavRecentMostEventCopyWithImpl<$Res, FavRecentMostEvent>;
}

/// @nodoc
class _$FavRecentMostEventCopyWithImpl<$Res, $Val extends FavRecentMostEvent>
    implements $FavRecentMostEventCopyWith<$Res> {
  _$FavRecentMostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSongsListCopyWith<$Res> {
  factory _$$GetSongsListCopyWith(
          _$GetSongsList value, $Res Function(_$GetSongsList) then) =
      __$$GetSongsListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSongsListCopyWithImpl<$Res>
    extends _$FavRecentMostEventCopyWithImpl<$Res, _$GetSongsList>
    implements _$$GetSongsListCopyWith<$Res> {
  __$$GetSongsListCopyWithImpl(
      _$GetSongsList _value, $Res Function(_$GetSongsList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSongsList implements GetSongsList {
  const _$GetSongsList();

  @override
  String toString() {
    return 'FavRecentMostEvent.getSongsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSongsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongsList,
  }) {
    return getSongsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongsList,
  }) {
    return getSongsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongsList,
    required TResult orElse(),
  }) {
    if (getSongsList != null) {
      return getSongsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSongsList value) getSongsList,
  }) {
    return getSongsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSongsList value)? getSongsList,
  }) {
    return getSongsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSongsList value)? getSongsList,
    required TResult orElse(),
  }) {
    if (getSongsList != null) {
      return getSongsList(this);
    }
    return orElse();
  }
}

abstract class GetSongsList implements FavRecentMostEvent {
  const factory GetSongsList() = _$GetSongsList;
}

/// @nodoc
mixin _$FavRecentMostState {
  List<Songs> get favSongList => throw _privateConstructorUsedError;
  List<Songs> get recentList => throw _privateConstructorUsedError;
  List<Songs> get mostList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavRecentMostStateCopyWith<FavRecentMostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavRecentMostStateCopyWith<$Res> {
  factory $FavRecentMostStateCopyWith(
          FavRecentMostState value, $Res Function(FavRecentMostState) then) =
      _$FavRecentMostStateCopyWithImpl<$Res, FavRecentMostState>;
  @useResult
  $Res call(
      {List<Songs> favSongList, List<Songs> recentList, List<Songs> mostList});
}

/// @nodoc
class _$FavRecentMostStateCopyWithImpl<$Res, $Val extends FavRecentMostState>
    implements $FavRecentMostStateCopyWith<$Res> {
  _$FavRecentMostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? recentList = null,
    Object? mostList = null,
  }) {
    return _then(_value.copyWith(
      favSongList: null == favSongList
          ? _value.favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      recentList: null == recentList
          ? _value.recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      mostList: null == mostList
          ? _value.mostList
          : mostList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FavRecentMostStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Songs> favSongList, List<Songs> recentList, List<Songs> mostList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FavRecentMostStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favSongList = null,
    Object? recentList = null,
    Object? mostList = null,
  }) {
    return _then(_$_Initial(
      favSongList: null == favSongList
          ? _value._favSongList
          : favSongList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      recentList: null == recentList
          ? _value._recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      mostList: null == mostList
          ? _value._mostList
          : mostList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Songs> favSongList,
      required final List<Songs> recentList,
      required final List<Songs> mostList})
      : _favSongList = favSongList,
        _recentList = recentList,
        _mostList = mostList;

  final List<Songs> _favSongList;
  @override
  List<Songs> get favSongList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favSongList);
  }

  final List<Songs> _recentList;
  @override
  List<Songs> get recentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentList);
  }

  final List<Songs> _mostList;
  @override
  List<Songs> get mostList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostList);
  }

  @override
  String toString() {
    return 'FavRecentMostState(favSongList: $favSongList, recentList: $recentList, mostList: $mostList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._favSongList, _favSongList) &&
            const DeepCollectionEquality()
                .equals(other._recentList, _recentList) &&
            const DeepCollectionEquality().equals(other._mostList, _mostList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favSongList),
      const DeepCollectionEquality().hash(_recentList),
      const DeepCollectionEquality().hash(_mostList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FavRecentMostState {
  const factory _Initial(
      {required final List<Songs> favSongList,
      required final List<Songs> recentList,
      required final List<Songs> mostList}) = _$_Initial;

  @override
  List<Songs> get favSongList;
  @override
  List<Songs> get recentList;
  @override
  List<Songs> get mostList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
