import 'package:flutter/material.dart';
import 'package:flutter_dio/models/character_model.dart';

class CharacterTile extends StatelessWidget {
  final CharacterModel character;

  const CharacterTile(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    final avatar = character.image.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(character.image));
    return ListTile(
      leading: avatar,
      title: Text(character.name),
      subtitle: Text(character.species),
    );
  }
}
