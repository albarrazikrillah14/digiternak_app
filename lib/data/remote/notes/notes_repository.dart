import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/model/notes/request/note_request.dart';
import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/data/model/notes/response/note_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class NotesRepository {
  final ApiService service;

  NotesRepository(this.service);

  Future<LivestockResponse> getAllLivestock() async {
    return await service.getAllLivestock();
  }

  Future<NoteResponse> createNote(NoteRequest request, int livestockId) async {
    return await service.createCatatan(request, livestockId);
  }

  Future<NoteResponse> getNoteById(int noteId) async {
    return await service.getCatatanById(noteId);
  }

  Future<NotesResponse> getNotesByUserId() async {
    return await service.getAllCatatanData();
  }

  Future<NotesResponse?> getNotesByLivestockId(int livestockId) async {
    return await service.getAllNotesByLivestockId(livestockId);
  }

  Future<NoteResponse> editNoteById(NoteRequest request, noteId) async {
    return await service.editCatatanById(request, noteId);
  }

  Future<BaseModel> deleteNoteById(int noteId) async {
    return await service.deleteCatatanById(noteId);
  }
}
