import 'package:freezed_annotation/freezed_annotation.dart';
part 'cage_result.g.dart';
part 'cage_result.freezed.dart';

@freezed
class CageResult with _$CageResult {
  factory CageResult({
    required int? id,
    required String? name,
    required String? location,
    required String? description,
    required List<int>? livestocks,
  }) = _CageResult;

  factory CageResult.fromJson(Map<String, dynamic> json) =>
      _$CageResultFromJson(json);
}
