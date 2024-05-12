import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_response.g.dart';
part 'notes_response.freezed.dart';

@freezed
class NotesResponse with _$NotesResponse {
  factory NotesResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required List<NoteData>? data,
  }) = _NotesResponse;

  factory NotesResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesResponseFromJson(json);
}
