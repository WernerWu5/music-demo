// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeriodEntityT _$PeriodEntityTFromJson(Map<String, dynamic> json) {
  return _PeriodEntityT.fromJson(json);
}

/// @nodoc
mixin _$PeriodEntityT {
  List<PeriodEntity> get data => throw _privateConstructorUsedError;

  /// Serializes this PeriodEntityT to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodEntityT
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodEntityTCopyWith<PeriodEntityT> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodEntityTCopyWith<$Res> {
  factory $PeriodEntityTCopyWith(
          PeriodEntityT value, $Res Function(PeriodEntityT) then) =
      _$PeriodEntityTCopyWithImpl<$Res, PeriodEntityT>;
  @useResult
  $Res call({List<PeriodEntity> data});
}

/// @nodoc
class _$PeriodEntityTCopyWithImpl<$Res, $Val extends PeriodEntityT>
    implements $PeriodEntityTCopyWith<$Res> {
  _$PeriodEntityTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodEntityT
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PeriodEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodEntityTImplCopyWith<$Res>
    implements $PeriodEntityTCopyWith<$Res> {
  factory _$$PeriodEntityTImplCopyWith(
          _$PeriodEntityTImpl value, $Res Function(_$PeriodEntityTImpl) then) =
      __$$PeriodEntityTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PeriodEntity> data});
}

/// @nodoc
class __$$PeriodEntityTImplCopyWithImpl<$Res>
    extends _$PeriodEntityTCopyWithImpl<$Res, _$PeriodEntityTImpl>
    implements _$$PeriodEntityTImplCopyWith<$Res> {
  __$$PeriodEntityTImplCopyWithImpl(
      _$PeriodEntityTImpl _value, $Res Function(_$PeriodEntityTImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodEntityT
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PeriodEntityTImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PeriodEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodEntityTImpl implements _PeriodEntityT {
  const _$PeriodEntityTImpl({required final List<PeriodEntity> data})
      : _data = data;

  factory _$PeriodEntityTImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodEntityTImplFromJson(json);

  final List<PeriodEntity> _data;
  @override
  List<PeriodEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PeriodEntityT(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodEntityTImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of PeriodEntityT
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodEntityTImplCopyWith<_$PeriodEntityTImpl> get copyWith =>
      __$$PeriodEntityTImplCopyWithImpl<_$PeriodEntityTImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodEntityTImplToJson(
      this,
    );
  }
}

abstract class _PeriodEntityT implements PeriodEntityT {
  const factory _PeriodEntityT({required final List<PeriodEntity> data}) =
      _$PeriodEntityTImpl;

  factory _PeriodEntityT.fromJson(Map<String, dynamic> json) =
      _$PeriodEntityTImpl.fromJson;

  @override
  List<PeriodEntity> get data;

  /// Create a copy of PeriodEntityT
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodEntityTImplCopyWith<_$PeriodEntityTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PeriodEntity _$PeriodEntityFromJson(Map<String, dynamic> json) {
  return _PeriodEntity.fromJson(json);
}

/// @nodoc
mixin _$PeriodEntity {
  String get year => throw _privateConstructorUsedError;
  String get seq => throw _privateConstructorUsedError;
  int get totalSeq => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get N1 => throw _privateConstructorUsedError;
  String get N2 => throw _privateConstructorUsedError;
  String get N3 => throw _privateConstructorUsedError;
  String get N4 => throw _privateConstructorUsedError;
  String get N5 => throw _privateConstructorUsedError;
  String get N6 => throw _privateConstructorUsedError;
  String get N7 => throw _privateConstructorUsedError;

  /// Serializes this PeriodEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodEntityCopyWith<PeriodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodEntityCopyWith<$Res> {
  factory $PeriodEntityCopyWith(
          PeriodEntity value, $Res Function(PeriodEntity) then) =
      _$PeriodEntityCopyWithImpl<$Res, PeriodEntity>;
  @useResult
  $Res call(
      {String year,
      String seq,
      int totalSeq,
      String date,
      String N1,
      String N2,
      String N3,
      String N4,
      String N5,
      String N6,
      String N7});
}

/// @nodoc
class _$PeriodEntityCopyWithImpl<$Res, $Val extends PeriodEntity>
    implements $PeriodEntityCopyWith<$Res> {
  _$PeriodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? seq = null,
    Object? totalSeq = null,
    Object? date = null,
    Object? N1 = null,
    Object? N2 = null,
    Object? N3 = null,
    Object? N4 = null,
    Object? N5 = null,
    Object? N6 = null,
    Object? N7 = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeq: null == totalSeq
          ? _value.totalSeq
          : totalSeq // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      N1: null == N1
          ? _value.N1
          : N1 // ignore: cast_nullable_to_non_nullable
              as String,
      N2: null == N2
          ? _value.N2
          : N2 // ignore: cast_nullable_to_non_nullable
              as String,
      N3: null == N3
          ? _value.N3
          : N3 // ignore: cast_nullable_to_non_nullable
              as String,
      N4: null == N4
          ? _value.N4
          : N4 // ignore: cast_nullable_to_non_nullable
              as String,
      N5: null == N5
          ? _value.N5
          : N5 // ignore: cast_nullable_to_non_nullable
              as String,
      N6: null == N6
          ? _value.N6
          : N6 // ignore: cast_nullable_to_non_nullable
              as String,
      N7: null == N7
          ? _value.N7
          : N7 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodEntityImplCopyWith<$Res>
    implements $PeriodEntityCopyWith<$Res> {
  factory _$$PeriodEntityImplCopyWith(
          _$PeriodEntityImpl value, $Res Function(_$PeriodEntityImpl) then) =
      __$$PeriodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String year,
      String seq,
      int totalSeq,
      String date,
      String N1,
      String N2,
      String N3,
      String N4,
      String N5,
      String N6,
      String N7});
}

/// @nodoc
class __$$PeriodEntityImplCopyWithImpl<$Res>
    extends _$PeriodEntityCopyWithImpl<$Res, _$PeriodEntityImpl>
    implements _$$PeriodEntityImplCopyWith<$Res> {
  __$$PeriodEntityImplCopyWithImpl(
      _$PeriodEntityImpl _value, $Res Function(_$PeriodEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? seq = null,
    Object? totalSeq = null,
    Object? date = null,
    Object? N1 = null,
    Object? N2 = null,
    Object? N3 = null,
    Object? N4 = null,
    Object? N5 = null,
    Object? N6 = null,
    Object? N7 = null,
  }) {
    return _then(_$PeriodEntityImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeq: null == totalSeq
          ? _value.totalSeq
          : totalSeq // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      N1: null == N1
          ? _value.N1
          : N1 // ignore: cast_nullable_to_non_nullable
              as String,
      N2: null == N2
          ? _value.N2
          : N2 // ignore: cast_nullable_to_non_nullable
              as String,
      N3: null == N3
          ? _value.N3
          : N3 // ignore: cast_nullable_to_non_nullable
              as String,
      N4: null == N4
          ? _value.N4
          : N4 // ignore: cast_nullable_to_non_nullable
              as String,
      N5: null == N5
          ? _value.N5
          : N5 // ignore: cast_nullable_to_non_nullable
              as String,
      N6: null == N6
          ? _value.N6
          : N6 // ignore: cast_nullable_to_non_nullable
              as String,
      N7: null == N7
          ? _value.N7
          : N7 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodEntityImpl implements _PeriodEntity {
  const _$PeriodEntityImpl(
      {required this.year,
      required this.seq,
      required this.totalSeq,
      required this.date,
      required this.N1,
      required this.N2,
      required this.N3,
      required this.N4,
      required this.N5,
      required this.N6,
      required this.N7});

  factory _$PeriodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodEntityImplFromJson(json);

  @override
  final String year;
  @override
  final String seq;
  @override
  final int totalSeq;
  @override
  final String date;
  @override
  final String N1;
  @override
  final String N2;
  @override
  final String N3;
  @override
  final String N4;
  @override
  final String N5;
  @override
  final String N6;
  @override
  final String N7;

  @override
  String toString() {
    return 'PeriodEntity(year: $year, seq: $seq, totalSeq: $totalSeq, date: $date, N1: $N1, N2: $N2, N3: $N3, N4: $N4, N5: $N5, N6: $N6, N7: $N7)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodEntityImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.totalSeq, totalSeq) ||
                other.totalSeq == totalSeq) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.N1, N1) || other.N1 == N1) &&
            (identical(other.N2, N2) || other.N2 == N2) &&
            (identical(other.N3, N3) || other.N3 == N3) &&
            (identical(other.N4, N4) || other.N4 == N4) &&
            (identical(other.N5, N5) || other.N5 == N5) &&
            (identical(other.N6, N6) || other.N6 == N6) &&
            (identical(other.N7, N7) || other.N7 == N7));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, year, seq, totalSeq, date, N1, N2, N3, N4, N5, N6, N7);

  /// Create a copy of PeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodEntityImplCopyWith<_$PeriodEntityImpl> get copyWith =>
      __$$PeriodEntityImplCopyWithImpl<_$PeriodEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodEntityImplToJson(
      this,
    );
  }
}

abstract class _PeriodEntity implements PeriodEntity {
  const factory _PeriodEntity(
      {required final String year,
      required final String seq,
      required final int totalSeq,
      required final String date,
      required final String N1,
      required final String N2,
      required final String N3,
      required final String N4,
      required final String N5,
      required final String N6,
      required final String N7}) = _$PeriodEntityImpl;

  factory _PeriodEntity.fromJson(Map<String, dynamic> json) =
      _$PeriodEntityImpl.fromJson;

  @override
  String get year;
  @override
  String get seq;
  @override
  int get totalSeq;
  @override
  String get date;
  @override
  String get N1;
  @override
  String get N2;
  @override
  String get N3;
  @override
  String get N4;
  @override
  String get N5;
  @override
  String get N6;
  @override
  String get N7;

  /// Create a copy of PeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodEntityImplCopyWith<_$PeriodEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
