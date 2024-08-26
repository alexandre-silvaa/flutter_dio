import 'package:mobx/mobx.dart';

import '../dto/paged_response_dto.dart';
import '../models/character_model.dart';
import '../repositories/character_repository.dart';

part 'characters_store.g.dart';

class CharactersStore = _CharactersStore with _$CharactersStore;

enum DirectionEnum { previous, next }

abstract class _CharactersStore with Store {
  final CharacterRepository _characterRepository = CharacterRepository();

  @observable
  List<CharacterModel> characters = [];

  @observable
  bool isLoading = false;

  @observable
  String searchQuery = '';

  @observable
  int currentPage = 1;

  @observable
  String? error;

  @action
  Future<void> loadCharacters({int? page, String? name}) async {
    isLoading = true;
    error = null;
    try {
      PaginatedResponseDto<CharacterModel> response = await _characterRepository
          .getCharacters(page: page ?? currentPage, name: name);

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
    currentPage = 1;
    loadCharacters(page: currentPage, name: searchQuery);
  }

  @action
  void changePage(DirectionEnum direction) {
    if (direction == DirectionEnum.next) {
      currentPage++;
      loadCharacters(page: currentPage, name: searchQuery);
    }

    if (direction == DirectionEnum.previous && currentPage > 1) {
      currentPage--;
      loadCharacters(page: currentPage, name: searchQuery);
    }
  }
}
