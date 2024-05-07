import 'package:freezed_annotation/freezed_annotation.dart';
import 'result/kandang_result.dart';

part 'kandang_response.freezed.dart';
part 'kandang_response.g.dart';

@freezed
class KandangResponse with _$KandangResponse {
  factory KandangResponse({
    required List<KandangResult> data,
  }) = _KandangResponse;

  factory KandangResponse.fromJson(Map<String, dynamic> json) =>
      _$KandangResponseFromJson(json);

  factory KandangResponse.fromJsonList(List<dynamic> json) => KandangResponse(
        data: json
            .map((e) => KandangResult.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
