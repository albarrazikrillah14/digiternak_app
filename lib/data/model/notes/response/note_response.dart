import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_response.g.dart';
part 'note_response.freezed.dart';

@freezed
class NoteResponse with _$NoteResponse {
  factory NoteResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required NoteData? data,
  }) = _NoteResponse;

  factory NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteResponseFromJson(json);
}
