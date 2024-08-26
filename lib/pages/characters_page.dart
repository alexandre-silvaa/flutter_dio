import 'package:flutter/material.dart';
import 'package:flutter_dio/components/ButtonPaginated.dart';
import 'package:flutter_dio/components/CharacterTile.dart';
import 'package:flutter_dio/store/characters_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final CharactersStore charactersStore = CharactersStore();

  @override
  void initState() {
    super.initState();
    charactersStore.loadCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Personagens de Rick e Morty',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Procure pelo nome',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                charactersStore.updateSearchQuery(value);
              },
            ),
          ),
          Expanded(
            child: Observer(
              builder: (_) {
                if (charactersStore.isLoading) {
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (charactersStore.characters.isEmpty &&
                    !charactersStore.isLoading) {
                  return const Center(
                    child: Text('Personagens não encontrados'),
                  );
                }
                return ListView.builder(
                  itemCount: charactersStore.characters.length,
                  itemBuilder: (context, index) {
                    final character = charactersStore.characters[index];
                    return CharacterTile(
                      character,
                    );
                  },
                );
              },
            ),
          ),
          ButtonPaginated(charactersStore.changePage)
        ],
      ),
    );
  }
}
