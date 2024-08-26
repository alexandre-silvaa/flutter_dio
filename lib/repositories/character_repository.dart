import '../api/api_service.dart';
import '../dto/paged_response_dto.dart';
import '../models/character_model.dart';

class CharacterRepository {
  final ApiService _apiService = ApiService();

  Future<PaginatedResponseDto<CharacterModel>> getCharacters(
      {int? page, String? name}) async {
    try {
      final response = await _apiService.getCharacters(page: page, name: name);

      return PaginatedResponseDto<CharacterModel>.fromJson(
        response.data,
        (json) => CharacterModel.fromJson(json),
      );
    } catch (e) {
      throw Exception('Erro ao buscar personagens: $e');
    }
  }
}
