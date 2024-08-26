// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersStore on _CharactersStore, Store {
  late final _$charactersAtom =
      Atom(name: '_CharactersStore.characters', context: context);

  @override
  List<CharacterModel> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(List<CharacterModel> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CharactersStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$searchQueryAtom =
      Atom(name: '_CharactersStore.searchQuery', context: context);

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$currentPageAtom =
      Atom(name: '_CharactersStore.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_CharactersStore.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$loadCharactersAsyncAction =
      AsyncAction('_CharactersStore.loadCharacters', context: context);

  @override
  Future<void> loadCharacters({int? page, String? name}) {
    return _$loadCharactersAsyncAction
        .run(() => super.loadCharacters(page: page, name: name));
  }

  late final _$_CharactersStoreActionController =
      ActionController(name: '_CharactersStore', context: context);

  @override
  void updateSearchQuery(String query) {
    final _$actionInfo = _$_CharactersStoreActionController.startAction(
        name: '_CharactersStore.updateSearchQuery');
    try {
      return super.updateSearchQuery(query);
    } finally {
      _$_CharactersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePage(DirectionEnum direction) {
    final _$actionInfo = _$_CharactersStoreActionController.startAction(
        name: '_CharactersStore.changePage');
    try {
      return super.changePage(direction);
    } finally {
      _$_CharactersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
characters: ${characters},
isLoading: ${isLoading},
searchQuery: ${searchQuery},
currentPage: ${currentPage},
error: ${error}
    ''';
  }
}
