import 'package:dio/dio.dart';
import 'dio_client.dart';

class ApiService {
  final DioClient _dioClient = DioClient();

  Future<Response> getCharacters({required int page}) async {
    try {
      final Response response = await _dioClient.dio.get('/character');
      return response;
    } on DioException catch (e) {
      // Tratamento de erro
      throw Exception('Erro ao recuperar personagens login: ${e.message}');
    }
  }
}
