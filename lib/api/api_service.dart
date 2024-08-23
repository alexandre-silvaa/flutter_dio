import 'package:dio/dio.dart';
import 'dio_client.dart';

class ApiService {
  final DioClient _dioClient = DioClient();

  Future<Response> getCharacters({required int page}) async {
    try {
      final Response response = await _dioClient.dio
          .get('/character', queryParameters: {'page': page});
      return response;
    } on DioException catch (e) {
      throw Exception('Erro ao recuperar personagens: ${e.message}');
    }
  }
}
