import 'package:flutter/material.dart';
import 'package:kbc_game/views/screens/game_oner_page.dart';
import 'package:kbc_game/views/screens/homepage.dart';
import 'package:kbc_game/views/screens/loose_page.dart';
import 'package:kbc_game/views/screens/winner_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      'winner_page': (context) => winner_page(),
      'gameover_page': (context) => gameover_page(),
      'lose_page': (context) => lose_page(),
    },
  ));
}
