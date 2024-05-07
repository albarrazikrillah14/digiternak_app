import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/catatan/request/catatan_request.dart';
import 'package:digiternak_app/data/model/catatan/response/all_catatan_response.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/data/model/livestock/response/all_livestock/all_livestock_response.dart';
import 'package:digiternak_app/data/remote/notes/notes_repository.dart';
import 'package:flutter/material.dart';

class NotesProvider extends ChangeNotifier {
  NotesRepository repository;

  NotesProvider(this.repository);

  String _message = "";

  ResultState _stateNote = ResultState.noData;
  ResultState _state = ResultState.noData;
  ResultState _livestockState = ResultState.noData;
  ResultState _deleteState = ResultState.noData;
  ResultState _updateState = ResultState.noData;
  ResultState _createState = ResultState.noData;
  late AllLivestockResponse _livestocks;
  late AllCatatanResponse _notes;
  late CatatanData _note;

  ResultState get stateNote => _stateNote;
  ResultState get state => _state;
  ResultState get livestockState => _livestockState;
  ResultState get createState => _createState;
  ResultState get deleteState => _deleteState;
  ResultState get updateState => _updateState;
  String get message => _message;
  AllLivestockResponse get livestocks => _livestocks;
  AllCatatanResponse get notes => _notes;
  CatatanData get note => _note;

  Future<void> createNote(CatatanRequest request, int livestockId) async {
    _createState = ResultState.loading;
    notifyListeners();

    final result = await repository.createNote(request, livestockId);

    if (result.error == false) {
      _createState = ResultState.hasData;
      _message = "Catatan berhasil ditambahkan";
      _note = result.data;
    } else {
      _createState = ResultState.error;
      _message = "Catatan gagal ditambahkan";
    }

    notifyListeners();
    getNotesByUserId();
  }

  void setCreateState() {
    _createState = ResultState.noData;
  }

  Future<void> getNoteById(noteId) async {
    _stateNote = ResultState.loading;
    notifyListeners();

    final result = await repository.getNoteById(noteId);

    if (result.id == 0) {
      _stateNote = ResultState.noData;
    } else {
      _note = result;
      _stateNote = ResultState.hasData;
    }

    notifyListeners();
  }

  Future<void> editNoteById(CatatanRequest request, int noteId) async {
    _updateState = ResultState.loading;
    notifyListeners();

    final result = await repository.editNoteById(request, noteId);

    if (result.error == false) {
      _updateState = ResultState.hasData;
      _message = "Catatan berhasil ditambahkan";
    } else {
      _updateState = ResultState.error;
      _message = "Catatan gagal ditambahkan";
    }

    notifyListeners();
    await getNoteById(noteId);
  }

  void setUpdateState() {
    _updateState = ResultState.noData;
    notifyListeners();
  }

  Future<void> deleteNoteById(int id) async {
    _stateNote = ResultState.loading;
    notifyListeners();

    final result = await repository.deleteNoteById(id);

    if (result.error == false) {
      _stateNote = ResultState.hasData;
      _message = "Berhasil Menghapus Catatan";
    } else {
      _stateNote = ResultState.error;
      _message = "Gagal Menghapus Catatan";
    }
    notifyListeners();
    await getNotesByUserId();
  }

  void setDeleteState() {
    _deleteState = ResultState.noData;
    notifyListeners();
  }

  Future<void> getLivestocks() async {
    _livestockState = ResultState.loading;
    notifyListeners();

    final result = await repository.getAllLivestock();

    if (result.data == null) {
      _message = "Belum ada Ternak, silahkan daftarka ternak terlebih dahulu";
      _livestockState = ResultState.noData;
    } else {
      _livestockState = ResultState.hasData;
      _livestocks = result;
    }

    notifyListeners();
  }

  Future<void> getNotesByUserId() async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await repository.getNotesByUserId();

    if (result.data.isEmpty) {
      _state = ResultState.noData;
      notifyListeners();
    } else {
      _notes = result;
      _state = ResultState.hasData;
    }
    notifyListeners();
  }

  Future<void> getNotesByLivestockId(int livestockId) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await repository.getNotesByLivestockId(livestockId);
    if (result == null) {
      _state = ResultState.noData;
      notifyListeners();
    } else {
      _notes = result;
      _state = ResultState.hasData;
    }
    notifyListeners();
  }

  void setState() {
    _state = ResultState.noData;
  }
}
