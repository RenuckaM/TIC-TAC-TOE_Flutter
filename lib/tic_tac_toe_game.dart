import 'package:flutter/material.dart';

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';
  bool gameFinished = false;
  String result = '';

  void _handleTap(int index) {
    if (board[index] == '' && !gameFinished) {
      setState(() {
        board[index] = currentPlayer;
        if (_checkWinner()) {
          result = '$currentPlayer Wins!';
          gameFinished = true;
        } else if (!board.contains('')) {
          result = 'It\'s a Draw!';
          gameFinished = true;
        }
        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
      });
    }
  }

  bool _checkWinner() {
    const winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      if (board[pattern[0]] == currentPlayer &&
          board[pattern[1]] == currentPlayer &&
          board[pattern[2]] == currentPlayer) {
        return true;
      }
    }
    return false;
  }

  void _resetGame() {
    setState(() {
      board = List.filled(9, '');
      currentPlayer = 'X';
      gameFinished = false;
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 151, 119),
      appBar: AppBar(
        title: const Text(
          'Tic-Tac-Toe',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 119, 73, 54),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            gameFinished ? result : 'Player $currentPlayer\'s Turn',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(height: 20),
          _buildBoard(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _resetGame,
            child: Text(
              'Reset Game',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 119, 73, 54),
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoard() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _handleTap(index),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 119, 73, 54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                board[index],
                style: TextStyle(
                  fontSize: 60,
                  color: board[index] == 'X'
                      ? Color.fromARGB(255, 255, 255, 63)
                      : Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
