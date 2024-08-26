import 'package:flutter/material.dart';
import 'package:flutter_dio/pages/characters_page.dart';
import 'package:flutter_dio/store/characters_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CharactersStore>(create: (_) => CharactersStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CharactersPage(),
      ),
    );
  }
}
