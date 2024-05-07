import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_response.g.dart';
part 'livestock_response.freezed.dart';

@freezed
class LivestockResponse with _$LivestockResponse {
  factory LivestockResponse({
    required String message,
    required bool error,
    required List<LivestockData>? data,
  }) = _LivestockResponse;

  factory LivestockResponse.fromJson(Map<String, dynamic> json) =>
      _$LivestockResponseFromJson(json);
}
