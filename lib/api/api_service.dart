import 'package:dio/dio.dart';
import 'dio_client.dart';

class ApiService {
  final DioClient _dioClient = DioClient();

  Future<Response> getCharacters({int? page, String? name}) async {
    try {
      final Response response = await _dioClient.dio
          .get('/character', queryParameters: {'page': page, 'name': name});
      return response;
    } on DioException catch (e) {
      throw Exception('Erro ao recuperar personagens: ${e.message}');
    }
  }
}
