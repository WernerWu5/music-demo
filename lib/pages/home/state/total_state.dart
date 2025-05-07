import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_state.freezed.dart';
part 'total_state.g.dart';

@freezed
class TotalState with _$TotalState {
  const factory TotalState({
    @Default([]) List<bool> titleDots,
  }) = _TotalState;

  factory TotalState.fromJson(Map<String, dynamic> json) =>
      _$TotalStateFromJson(json);
}
