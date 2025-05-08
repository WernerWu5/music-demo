// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  List<MusicEntity> get data => throw _privateConstructorUsedError;
  bool get loading =>
      throw _privateConstructorUsedError; // 排序选中，索引0 为 类型， 索引1 为 升序，降序
  List<dynamic> get activeSelect => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get resultCount => throw _privateConstructorUsedError; // 未搜索的情况下数据
  List<MusicEntity> get emptySearchData =>
      throw _privateConstructorUsedError; // 歌曲升序，降序缓存
  List<List<MusicEntity>> get songCacheData =>
      throw _privateConstructorUsedError; // 专辑升序，降序缓存
  List<List<MusicEntity>> get collectionCacheData =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<MusicEntity> data,
      bool loading,
      List<dynamic> activeSelect,
      int page,
      int resultCount,
      List<MusicEntity> emptySearchData,
      List<List<MusicEntity>> songCacheData,
      List<List<MusicEntity>> collectionCacheData});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? loading = null,
    Object? activeSelect = null,
    Object? page = null,
    Object? resultCount = null,
    Object? emptySearchData = null,
    Object? songCacheData = null,
    Object? collectionCacheData = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MusicEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSelect: null == activeSelect
          ? _value.activeSelect
          : activeSelect // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      emptySearchData: null == emptySearchData
          ? _value.emptySearchData
          : emptySearchData // ignore: cast_nullable_to_non_nullable
              as List<MusicEntity>,
      songCacheData: null == songCacheData
          ? _value.songCacheData
          : songCacheData // ignore: cast_nullable_to_non_nullable
              as List<List<MusicEntity>>,
      collectionCacheData: null == collectionCacheData
          ? _value.collectionCacheData
          : collectionCacheData // ignore: cast_nullable_to_non_nullable
              as List<List<MusicEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MusicEntity> data,
      bool loading,
      List<dynamic> activeSelect,
      int page,
      int resultCount,
      List<MusicEntity> emptySearchData,
      List<List<MusicEntity>> songCacheData,
      List<List<MusicEntity>> collectionCacheData});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? loading = null,
    Object? activeSelect = null,
    Object? page = null,
    Object? resultCount = null,
    Object? emptySearchData = null,
    Object? songCacheData = null,
    Object? collectionCacheData = null,
  }) {
    return _then(_$HomeStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MusicEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSelect: null == activeSelect
          ? _value._activeSelect
          : activeSelect // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      emptySearchData: null == emptySearchData
          ? _value._emptySearchData
          : emptySearchData // ignore: cast_nullable_to_non_nullable
              as List<MusicEntity>,
      songCacheData: null == songCacheData
          ? _value._songCacheData
          : songCacheData // ignore: cast_nullable_to_non_nullable
              as List<List<MusicEntity>>,
      collectionCacheData: null == collectionCacheData
          ? _value._collectionCacheData
          : collectionCacheData // ignore: cast_nullable_to_non_nullable
              as List<List<MusicEntity>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<MusicEntity> data = const [],
      this.loading = false,
      final List<dynamic> activeSelect = const [],
      this.page = 1,
      this.resultCount = 0,
      final List<MusicEntity> emptySearchData = const [],
      final List<List<MusicEntity>> songCacheData = const [[], []],
      final List<List<MusicEntity>> collectionCacheData = const [[], []]})
      : _data = data,
        _activeSelect = activeSelect,
        _emptySearchData = emptySearchData,
        _songCacheData = songCacheData,
        _collectionCacheData = collectionCacheData;

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  final List<MusicEntity> _data;
  @override
  @JsonKey()
  List<MusicEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool loading;
// 排序选中，索引0 为 类型， 索引1 为 升序，降序
  final List<dynamic> _activeSelect;
// 排序选中，索引0 为 类型， 索引1 为 升序，降序
  @override
  @JsonKey()
  List<dynamic> get activeSelect {
    if (_activeSelect is EqualUnmodifiableListView) return _activeSelect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeSelect);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int resultCount;
// 未搜索的情况下数据
  final List<MusicEntity> _emptySearchData;
// 未搜索的情况下数据
  @override
  @JsonKey()
  List<MusicEntity> get emptySearchData {
    if (_emptySearchData is EqualUnmodifiableListView) return _emptySearchData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emptySearchData);
  }

// 歌曲升序，降序缓存
  final List<List<MusicEntity>> _songCacheData;
// 歌曲升序，降序缓存
  @override
  @JsonKey()
  List<List<MusicEntity>> get songCacheData {
    if (_songCacheData is EqualUnmodifiableListView) return _songCacheData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songCacheData);
  }

// 专辑升序，降序缓存
  final List<List<MusicEntity>> _collectionCacheData;
// 专辑升序，降序缓存
  @override
  @JsonKey()
  List<List<MusicEntity>> get collectionCacheData {
    if (_collectionCacheData is EqualUnmodifiableListView)
      return _collectionCacheData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionCacheData);
  }

  @override
  String toString() {
    return 'HomeState(data: $data, loading: $loading, activeSelect: $activeSelect, page: $page, resultCount: $resultCount, emptySearchData: $emptySearchData, songCacheData: $songCacheData, collectionCacheData: $collectionCacheData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._activeSelect, _activeSelect) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality()
                .equals(other._emptySearchData, _emptySearchData) &&
            const DeepCollectionEquality()
                .equals(other._songCacheData, _songCacheData) &&
            const DeepCollectionEquality()
                .equals(other._collectionCacheData, _collectionCacheData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      loading,
      const DeepCollectionEquality().hash(_activeSelect),
      page,
      resultCount,
      const DeepCollectionEquality().hash(_emptySearchData),
      const DeepCollectionEquality().hash(_songCacheData),
      const DeepCollectionEquality().hash(_collectionCacheData));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<MusicEntity> data,
      final bool loading,
      final List<dynamic> activeSelect,
      final int page,
      final int resultCount,
      final List<MusicEntity> emptySearchData,
      final List<List<MusicEntity>> songCacheData,
      final List<List<MusicEntity>> collectionCacheData}) = _$HomeStateImpl;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  List<MusicEntity> get data;
  @override
  bool get loading; // 排序选中，索引0 为 类型， 索引1 为 升序，降序
  @override
  List<dynamic> get activeSelect;
  @override
  int get page;
  @override
  int get resultCount; // 未搜索的情况下数据
  @override
  List<MusicEntity> get emptySearchData; // 歌曲升序，降序缓存
  @override
  List<List<MusicEntity>> get songCacheData; // 专辑升序，降序缓存
  @override
  List<List<MusicEntity>> get collectionCacheData;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
