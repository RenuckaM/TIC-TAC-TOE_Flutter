
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tic_tac_toe_game.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/game': (context) => TicTacToeGame(),
      },
    );
  }
}
