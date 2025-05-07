// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TotalState _$TotalStateFromJson(Map<String, dynamic> json) {
  return _TotalState.fromJson(json);
}

/// @nodoc
mixin _$TotalState {
  List<bool> get titleDots => throw _privateConstructorUsedError;

  /// Serializes this TotalState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalStateCopyWith<TotalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalStateCopyWith<$Res> {
  factory $TotalStateCopyWith(
          TotalState value, $Res Function(TotalState) then) =
      _$TotalStateCopyWithImpl<$Res, TotalState>;
  @useResult
  $Res call({List<bool> titleDots});
}

/// @nodoc
class _$TotalStateCopyWithImpl<$Res, $Val extends TotalState>
    implements $TotalStateCopyWith<$Res> {
  _$TotalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleDots = null,
  }) {
    return _then(_value.copyWith(
      titleDots: null == titleDots
          ? _value.titleDots
          : titleDots // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalStateImplCopyWith<$Res>
    implements $TotalStateCopyWith<$Res> {
  factory _$$TotalStateImplCopyWith(
          _$TotalStateImpl value, $Res Function(_$TotalStateImpl) then) =
      __$$TotalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> titleDots});
}

/// @nodoc
class __$$TotalStateImplCopyWithImpl<$Res>
    extends _$TotalStateCopyWithImpl<$Res, _$TotalStateImpl>
    implements _$$TotalStateImplCopyWith<$Res> {
  __$$TotalStateImplCopyWithImpl(
      _$TotalStateImpl _value, $Res Function(_$TotalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleDots = null,
  }) {
    return _then(_$TotalStateImpl(
      titleDots: null == titleDots
          ? _value._titleDots
          : titleDots // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalStateImpl implements _TotalState {
  const _$TotalStateImpl({final List<bool> titleDots = const []})
      : _titleDots = titleDots;

  factory _$TotalStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalStateImplFromJson(json);

  final List<bool> _titleDots;
  @override
  @JsonKey()
  List<bool> get titleDots {
    if (_titleDots is EqualUnmodifiableListView) return _titleDots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleDots);
  }

  @override
  String toString() {
    return 'TotalState(titleDots: $titleDots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalStateImpl &&
            const DeepCollectionEquality()
                .equals(other._titleDots, _titleDots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_titleDots));

  /// Create a copy of TotalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalStateImplCopyWith<_$TotalStateImpl> get copyWith =>
      __$$TotalStateImplCopyWithImpl<_$TotalStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalStateImplToJson(
      this,
    );
  }
}

abstract class _TotalState implements TotalState {
  const factory _TotalState({final List<bool> titleDots}) = _$TotalStateImpl;

  factory _TotalState.fromJson(Map<String, dynamic> json) =
      _$TotalStateImpl.fromJson;

  @override
  List<bool> get titleDots;

  /// Create a copy of TotalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalStateImplCopyWith<_$TotalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
