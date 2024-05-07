import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_kandang_response.g.dart';
part 'get_kandang_response.freezed.dart';

@freezed
class GetKandangResponse with _$GetKandangResponse {
  factory GetKandangResponse({
    required int id,
    required String name,
    required String location,
  }) = _GetKandangResponse;

  factory GetKandangResponse.fromJson(Map<String, String> json) =>
      _$GetKandangResponseFromJson(json);
}
