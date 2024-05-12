import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_request.g.dart';
part 'note_request.freezed.dart';

@freezed
class NoteRequest with _$NoteRequest {
  factory NoteRequest({
    @JsonKey(name: 'livestock_feed') required String feed,
    required int costs,
    required String details,
  }) = _NoteRequest;

  factory NoteRequest.fromJson(Map<String, dynamic> json) =>
      _$NoteRequestFromJson(json);
}
