import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/model/notes/request/note_request.dart';
import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/data/model/notes/response/note_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class NotesRepository {
  final ApiService service;

  NotesRepository(this.service);

  Future<LivestockResponse> getLivestocks() async {
    return await service.getLivestocks();
  }

  Future<NoteResponse> createNote(NoteRequest request, int livestockId) async {
    return await service.createNote(request, livestockId);
  }

  Future<NoteResponse> getNoteById(int noteId) async {
    return await service.getNoteById(noteId);
  }

  Future<NotesResponse> getNotesByUserId() async {
    return await service.getNotes();
  }

  Future<NotesResponse?> getNotesByLivestockId(int livestockId) async {
    return await service.getNotesByLivestockId(livestockId);
  }

  Future<NoteResponse> editNoteById(NoteRequest request, noteId) async {
    return await service.editNoteById(request, noteId);
  }

  Future<BaseModel> deleteNoteById(int noteId) async {
    return await service.deleteNoteById(noteId);
  }
}
