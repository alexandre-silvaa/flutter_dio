import '../api/api_service.dart';
import '../dto/paged_response_dto.dart';
import '../models/character_model.dart';

class CharacterRepository {
  final ApiService _apiService = ApiService();

  Future<PaginatedResponseDto<CharacterModel>> getCharacters(
      {int page = 1}) async {
    try {
      final response = await _apiService.getCharacters(page: page);

      // Converte a resposta para PaginatedResponseDto<CharacterModel>
      return PaginatedResponseDto<CharacterModel>.fromJson(
          response.data, (json) => CharacterModel.fromJson(json));
    } catch (e) {
      throw Exception('Erro ao buscar personagens: $e');
    }
  }
}
