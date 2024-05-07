import 'dart:convert';
import 'dart:typed_data';

import 'package:digiternak_app/data/model/base_model.dart';
import 'package:digiternak_app/data/model/catatan/request/catatan_request.dart';
import 'package:digiternak_app/data/model/catatan/response/all_catatan_response.dart';
import 'package:digiternak_app/data/model/catatan/response/catatan_response.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/data/model/kandang/request/kandang_request.dart';
import 'package:digiternak_app/data/model/kandang/response/create/create_kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/kandang_response.dart';
import 'package:digiternak_app/data/model/kandang/response/result/kandang_result.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/all_livestock/all_livestock_response.dart';
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

  Future<KandangResponse> getKandang() async {
    final token = await getToken();

    final response = await http
        .get(Uri.parse('$endpoint/cage/get-cages'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final result = KandangResponse.fromJsonList(jsonDecode(response.body));

      return result;
    } else {
      throw Exception('Failed to load kandang');
    }
  }

  Future<KandangResult> getKandangById(int id) async {
    final token = await getToken();
    final response = await http
        .get(Uri.parse('$endpoint/cage/view/$id'), headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });

    final result = KandangResult.fromJson(json.decode(response.body));

    return result;
  }

  Future<CreateKandangResponse> createKandang(KandangRequest request) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/cage/create'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(request),
    );

    final result = CreateKandangResponse.fromJson(jsonDecode(response.body));
    return result;
  }

  //Catatan
  Future<CatatanResponse> createCatatan(
      CatatanRequest request, int livestockId) async {
    final token = await getToken();
    final response = await http.post(
      Uri.parse('$endpoint/note/create/$livestockId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );
    return CatatanResponse.fromJson(json.decode(response.body));
  }

  Future<AllCatatanResponse> getAllCatatanData() async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/index'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    return AllCatatanResponse.fromJsonList(json.decode(response.body));
  }

  Future<CatatanData> getCatatanById(int id) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/view/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    final result = CatatanData.fromJson(json.decode(response.body));
    return result;
  }

  Future<AllCatatanResponse?> getAllNotesByLivestockId(int id) async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('$endpoint/note/livestock/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = AllCatatanResponse.fromJsonList(json.decode(response.body));
    if (result.data.isEmpty) {
      return AllCatatanResponse.fromJson(json.decode(response.body));
    }
    return result;
  }

  Future<CatatanResponse> editCatatanById(
      CatatanRequest request, int noteId) async {
    final token = await getToken();
    final response = await http.put(
      Uri.parse('$endpoint/note/update/$noteId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request),
    );

    return CatatanResponse.fromJson(json.decode(response.body));
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

  Future<AllLivestockResponse> getAllLivestock() async {
    final token = await getToken();
    final userId = await authRepository.getUserId();
    final response = await http.get(
      Uri.parse('$endpoint/livestock/get-livestocks/$userId'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );
    final result = AllLivestockResponse.fromJson(json.decode(response.body));
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
