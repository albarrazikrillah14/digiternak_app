import 'dart:convert';
import 'dart:typed_data';

import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/cage/response/cage_response.dart';
import 'package:digiternak_app/data/model/notes/request/note_request.dart';
import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/data/model/notes/response/note_response.dart';
import 'package:digiternak_app/data/model/cage/request/cage_request.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/create/create_livestock_response.dart';
import 'package:digiternak_app/data/model/livestock/response/livestock_response.dart';
import 'package:digiternak_app/data/model/livestock/response/upload_image/livestock_upload_image_response.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final http.Client client;

  final endpoint = 'https://digiternak-420314.uc.r.appspot.com';

  final AuthRepository authRepository;

  ApiService(this.client, this.authRepository);

  Future<String> getToken() async {
    final token = await authRepository.getToken();
    return token ?? '';
  }

  Future<CagesResponse> getKandang() async {
    final token = await getToken();

    final response = await http
        .get(Uri.parse('$endpoint/cage/get-cages'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });
    return CagesResponse.fromJson(json.decode(response.body));
  }

  Future<CageResponse> getKandangById(int id) async {
    final token = await getToken();
    final response = await http
        .get(Uri.parse('$endpoint/cage/view/$id'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });

    final result = CageResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> createKandang(CageRequest request) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/cage/create'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(request),
    );

    final result = BaseModel.fromJson(jsonDecode(response.body));
    print("coi $result");
    return result;
  }

  //Catatan
  Future<NoteResponse> createCatatan(
      NoteRequest request, int livestockId) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/note/create/$livestockId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );
    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<NotesResponse> getAllCatatanData() async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/index'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    return NotesResponse.fromJson(json.decode(response.body));
  }

  Future<NoteResponse> getCatatanById(int id) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/view/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<NotesResponse?> getAllNotesByLivestockId(int id) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/livestock/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = NotesResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<NoteResponse> editCatatanById(NoteRequest request, int noteId) async {
    final token = await getToken();
    final response = await http.put(
      Uri.parse('$endpoint/note/update/$noteId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );

    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> deleteCatatanById(int noteId) async {
    final token = await getToken();
    final response = await http.delete(
      Uri.parse('$endpoint/note/delete/$noteId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = BaseModel.fromJson(json.decode(response.body));
    return result;
  }

  //Livestock
  Future<LivestockResponse> getLivestockByVID(String vid) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/livestock/search/$vid'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = LivestockResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<LivestockResponse> getAllLivestock() async {
    final token = await getToken();
    final userId = await authRepository.getUserId();
    final response = await http.get(
      Uri.parse('$endpoint/livestock/get-livestocks/$userId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = LivestockResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<CreateLivestockResponse> createLivestock(
      LivestockRequest request) async {
    final token = await getToken();
    final response = await http.post(Uri.parse('$endpoint/livestock/create'),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json'
        },
        body: jsonEncode(request));

    final result = CreateLivestockResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> deleteLivestock(int id) async {
    final token = await getToken();
    final response = await http.delete(
        Uri.parse("$endpoint/livestock/delete/$id"),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json'
        });

    final result = BaseModel.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> editLivestockById(
      LivestockRequest request, int livestockId) async {
    final token = await getToken();

    final response = await http.put(
      Uri.parse("$endpoint/livestock/update/$livestockId"),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: json.encode(request),
    );

    final result = BaseModel.fromJson(json.decode(response.body));
    return result;
  }

  Future<LivestockUploadImageResponse> uploadDocument(
    List<int> bytes,
    UploadType type,
    String id,
    String fileName,
  ) async {
    final token = await getToken();

    String url = "";
    if (type == UploadType.LVIESTOCK) {
      url = "$endpoint/livestock/upload-image/$id";
    } else {
      url = "$endpoint/note/upload-documentation/$id";
    }

    final uri = Uri.parse(url);
    var request = http.MultipartRequest('POST', uri);

    final multiPartFile = http.MultipartFile.fromBytes(
        type == UploadType.LVIESTOCK ? "livestock_image[]" : "documentation[]",
        bytes,
        filename: fileName);

    final Map<String, String> headers = {
      "Content-type": "multipart/form-data",
      'Authorization': 'Bearer $token',
    };

    request.files.add(multiPartFile);
    request.headers.addAll(headers);
    final http.StreamedResponse streamedResponse = await request.send();

    final Uint8List responseList = await streamedResponse.stream.toBytes();
    final String responseData = String.fromCharCodes(responseList);

    final result =
        LivestockUploadImageResponse.fromJson(json.decode(responseData));

    return result;
  }
}
