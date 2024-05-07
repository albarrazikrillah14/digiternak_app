import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_livestock_response.g.dart';
part 'all_livestock_response.freezed.dart';

@freezed
class AllLivestockResponse with _$AllLivestockResponse {
  factory AllLivestockResponse({
    required String message,
    required bool error,
    required List<LivestockData>? data,
  }) = _AllLivestockResponse;

  factory AllLivestockResponse.fromJson(Map<String, dynamic> json) =>
      _$AllLivestockResponseFromJson(json);
}
