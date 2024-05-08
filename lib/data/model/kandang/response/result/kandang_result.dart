import 'package:freezed_annotation/freezed_annotation.dart';
part 'kandang_result.g.dart';
part 'kandang_result.freezed.dart';

@freezed
class KandangResult with _$KandangResult {
  factory KandangResult({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required int? id,
    required String? location,
    required String? description,
    required List<int>? livestocks,
  }) = _KandangResult;

  factory KandangResult.fromJson(Map<String, dynamic> json) =>
      _$KandangResultFromJson(json);
}
