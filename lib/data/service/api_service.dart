import 'dart:convert';
import 'dart:typed_data';

import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/bcs/request/bcs_request.dart';
import 'package:digiternak_app/data/model/bcs/response/bcs_response.dart';
import 'package:digiternak_app/data/model/bcs/response/create/create_bcs_response.dart';
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
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final http.Client client;

  final endpoint = dotenv.env["BASE_URL"]!;

  final AuthRepository authRepository;

  ApiService(this.client, this.authRepository);

  Future<String> getToken() async {
    final token = await authRepository.getToken();
    return token ?? '';
  }

  Future<CagesResponse> getCages() async {
    final token = await getToken();

    final response =
        await http.get(Uri.parse('$endpoint/cage'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });
    return CagesResponse.fromJson(json.decode(response.body));
  }

  Future<CageResponse> getCageById(int id) async {
    final token = await getToken();
    final response = await http
        .get(Uri.parse('$endpoint/cage/$id'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });

    final result = CageResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> createCage(CageRequest request) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/cage'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(request),
    );

    final result = BaseModel.fromJson(jsonDecode(response.body));
    return result;
  }

  //Catatan
  Future<NoteResponse> createNote(NoteRequest request, int livestockId) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/note/$livestockId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );
    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<NotesResponse> getNotes() async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    return NotesResponse.fromJson(json.decode(response.body));
  }

  Future<NoteResponse> getNoteById(int id) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<NotesResponse?> getNotesByLivestockId(int id) async {
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

  Future<NoteResponse> editNoteById(NoteRequest request, int noteId) async {
    final token = await getToken();
    final response = await http.put(
      Uri.parse('$endpoint/note/$noteId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );

    final result = NoteResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> deleteNoteById(int noteId) async {
    final token = await getToken();
    final response = await http.delete(
      Uri.parse('$endpoint/note/$noteId'),
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
      Uri.parse('$endpoint/livestock/vid/$vid'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = LivestockResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<LivestockResponse> getLivestocks() async {
    final token = await getToken();
    final userId = await authRepository.getUserId();
    final response = await http.get(
      Uri.parse('$endpoint/livestock/uid/$userId'),
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
    final response = await http.post(Uri.parse('$endpoint/livestock'),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json'
        },
        body: jsonEncode(request));

    final result = CreateLivestockResponse.fromJson(json.decode(response.body));
    return result;
  }

  Future<BaseModel> deleteLivestockById(int id) async {
    final token = await getToken();
    final response = await http.delete(Uri.parse("$endpoint/livestock/$id"),
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
      Uri.parse("$endpoint/livestock/$livestockId"),
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
    } else if (type == UploadType.NOTES) {
      url = "$endpoint/note/upload-documentation/$id";
    } else {
      url = "$endpoint/bcs/upload-bcs/$id";
    }

    final uri = Uri.parse(url);
    var request = http.MultipartRequest('POST', uri);

    var param = "";
    switch (type) {
      case UploadType.LVIESTOCK:
        param = "livestock_image[]";
      case UploadType.NOTES:
        param = "documentation[]";
      case UploadType.BCS:
        param = "bcs_image[]";
    }
    final multiPartFile =
        http.MultipartFile.fromBytes(param, bytes, filename: fileName);

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

  //BCS
  Future<CreateBcsResponse> createBcs(
      BcsRequest request, int livestockId) async {
    final token = await getToken();

    final response = await http.post(
      Uri.parse("$endpoint/bcs/$livestockId"),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: json.encode(request),
    );

    final result = CreateBcsResponse.fromJson(json.decode(response.body));

    return result;
  }

  Future<CreateBcsResponse> editBcsById(BcsRequest request, int bcsId) async {
    final token = await getToken();

    final response = await http.put(
      Uri.parse("$endpoint/bcs/$bcsId"),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: json.encode(request),
    );

    final result = CreateBcsResponse.fromJson(json.decode(response.body));

    return result;
  }

  Future<CreateBcsResponse> getBcsById(int bcsId) async {
    final token = await getToken();

    final response = await http.get(
      Uri.parse('$endpoint/bcs/$bcsId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    final result = CreateBcsResponse.fromJson(json.decode(response.body));

    return result;
  }

  Future<BcsResponse> getBcsByLivestockId(int livestockId) async {
    final token = await getToken();

    final response = await http.get(
      Uri.parse('$endpoint/bcs/livestock/$livestockId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    final result = BcsResponse.fromJson(json.decode(response.body));

    return result;
  }

  Future<BaseModel> deleteBcsById(int bcsId) async {
    final token = await getToken();

    final response = await http.delete(
      Uri.parse('$endpoint/bcs/$bcsId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    final result = BaseModel.fromJson(json.decode(response.body));
    return result;
  }
}
