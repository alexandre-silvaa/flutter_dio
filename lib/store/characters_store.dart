import 'package:mobx/mobx.dart';

import '../dto/paged_response_dto.dart';
import '../models/character_model.dart';
import '../repositories/character_repository.dart';

part 'characters_store.g.dart';

class CharactersStore = _CharactersStore with _$CharactersStore;

abstract class _CharactersStore with Store {
  final CharacterRepository _characterRepository = CharacterRepository();

  @observable
  List<CharacterModel> characters = [];

  @observable
  bool isLoading = false;

  @observable
  String searchQuery = '';

  @observable
  String? error;

  @action
  Future<void> loadCharacters({int page = 1}) async {
    isLoading = true;
    error = null;
    try {
      PaginatedResponseDto<CharacterModel> response =
          await _characterRepository.getCharacters(page: page);

      characters = response.results;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
    }
  }

  @action
  void updateSearchQuery(String query) {
    searchQuery = query;
  }
}
