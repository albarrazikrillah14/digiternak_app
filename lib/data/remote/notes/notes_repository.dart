import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/catatan/request/catatan_request.dart';
import 'package:digiternak_app/data/model/catatan/response/all_catatan_response.dart';
import 'package:digiternak_app/data/model/catatan/response/catatan_response.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/data/model/livestock/response/all_livestock/all_livestock_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';

class NotesRepository {
  final ApiService service;

  NotesRepository(this.service);

  Future<AllLivestockResponse> getAllLivestock() async {
    return await service.getAllLivestock();
  }

  Future<CatatanResponse> createNote(
      CatatanRequest request, int livestockId) async {
    return await service.createCatatan(request, livestockId);
  }

  Future<CatatanData> getNoteById(int noteId) async {
    return await service.getCatatanById(noteId);
  }

  Future<AllCatatanResponse> getNotesByUserId() async {
    return await service.getAllCatatanData();
  }

  Future<AllCatatanResponse?> getNotesByLivestockId(int livestockId) async {
    return await service.getAllNotesByLivestockId(livestockId);
  }

  Future<CatatanResponse> editNoteById(CatatanRequest request, noteId) async {
    return await service.editCatatanById(request, noteId);
  }

  Future<BaseModel> deleteNoteById(int noteId) async {
    return await service.deleteCatatanById(noteId);
  }
}
