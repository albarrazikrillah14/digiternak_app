import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/data/model/kandang/response/kandang_response.dart';
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
  late KandangResponse _kandang;
  late String _status;
  late List<CatatanData>? _catatan = [];
  late LivestockResponse? _livestock;
  late LivestockResponse? _livestockSearch;

  ResultState get stateSearch => _stateSearch;
  ResultState get stateNotes => _stateNote;
  ResultState get state => _state;
  ResultState get stateDashboard => _stateDashboard;
  String get message => _message;
  String get status => _status;
  KandangResponse get kandang => _kandang;
  List<CatatanData>? get catatan => _catatan;
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

    if (result.data.isNotEmpty) {
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

    _catatan = result.data;
    notifyListeners();
  }

  Future<void> getAllLivestock() async {
    _state = ResultState.loading;
    final result = await repository.getAllLivestock();
  }

  Future<void> getLivestockByVID(String vid) async {
    _stateSearch = ResultState.loading;
    notifyListeners();

    final result = await repository.getLivestockByVID(vid);

    if (result.error) {
      _stateSearch = ResultState.error;
      _message = result.message;
    } else {
      _livestock = result;
      _stateSearch = ResultState.hasData;
    }
    notifyListeners();
  }

  void setSearchState() {
    _stateSearch = ResultState.noData;
    notifyListeners();
  }
}
