import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_catatan_response.g.dart';
part 'all_catatan_response.freezed.dart';

@freezed
class AllCatatanResponse with _$AllCatatanResponse {
  factory AllCatatanResponse({
    required List<CatatanData> data,
  }) = _AllCatatanResponse;

  factory AllCatatanResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCatatanResponseFromJson(json);

  factory AllCatatanResponse.fromJsonList(List<dynamic> json) =>
      AllCatatanResponse(
        data: json
            .map((e) => CatatanData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
