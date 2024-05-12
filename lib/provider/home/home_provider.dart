import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/remote/home/home_repository.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final HomeRepository repository;

  HomeProvider({required this.repository});

  late ResultState _stateDashboard = ResultState.noData;
  late ResultState _stateSearch = ResultState.noData;
  late ResultState _stateNote = ResultState.noData;
  late ResultState _state = ResultState.noData;
  String _message = '';
  late CagesResponse _kandang;
  late String _status;
  late List<NoteData>? _catatan = [];
  late LivestockResponse? _livestock;
  late LivestockResponse? _livestockSearch;

  ResultState get stateSearch => _stateSearch;
  ResultState get stateNotes => _stateNote;
  ResultState get state => _state;
  ResultState get stateDashboard => _stateDashboard;
  String get message => _message;
  String get status => _status;
  CagesResponse get kandang => _kandang;
  List<NoteData>? get catatan => _catatan;
  LivestockResponse? get livestock => _livestock;
  LivestockResponse? get livestockSearch => _livestockSearch;

  Future<void> getKandang({String type = ""}) async {
    switch (type) {
      case "dashboard":
        _stateDashboard = ResultState.loading;
      default:
        _state = ResultState.loading;
    }
    notifyListeners();

    final result = await repository.getKandang();

    if (result.data?.isNotEmpty ?? false) {
      _kandang = result;
      switch (type) {
        case "dashboard":
          _stateDashboard = ResultState.hasData;
        default:
          _state = ResultState.hasData;
      }
      notifyListeners();
    } else {
      _kandang = result;
      switch (type) {
        case "dashboard":
          _stateDashboard = ResultState.error;
        default:
          _state = ResultState.error;
      }
      _message = "data Kosong";
      notifyListeners();
    }

    notifyListeners();
  }

  Future<void> getAllCatatan() async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await repository.getAllCatatanData();
    if (result.data?.isEmpty ?? true) {
      _state = ResultState.noData;
    } else {
      _state = ResultState.hasData;
      _catatan = result.data;
    }

    notifyListeners();
  }

  void setState() {
    _state = ResultState.noData;
  }

  Future<void> getLivestockByVID(String vid) async {
    _stateSearch = ResultState.loading;
    notifyListeners();

    final result = await repository.getLivestockByVID(vid);

    if (result.error ?? true) {
      _stateSearch = ResultState.error;
      _message = result.message ?? "";
    } else {
      _livestock = result;
      _stateSearch = ResultState.hasData;
    }

    if (result.status == 401) {
      _stateSearch = ResultState.unauthorized;
    }
    notifyListeners();
  }

  void setSearchState() {
    _stateSearch = ResultState.noData;
    notifyListeners();
  }
}
