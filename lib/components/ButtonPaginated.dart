import 'package:flutter/material.dart';
import 'package:flutter_dio/store/characters_store.dart';

class ButtonPaginated extends StatelessWidget {
  final Function(DirectionEnum direction) changePage;

  const ButtonPaginated(this.changePage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Início'),
          ),
          ElevatedButton(
            onPressed: () {
              changePage(DirectionEnum.previous);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Row(
              children: [
                Icon(Icons.navigate_before),
                Text('Anterior'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              changePage(DirectionEnum.next);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Row(
              children: [
                Text('Próximo'),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Fim'),
          )
        ],
      ),
    );
  }
}
