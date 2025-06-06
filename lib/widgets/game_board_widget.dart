import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/models/game_state.dart';

import '../core/constants/enums.dart';

class GameBoardWidget extends StatelessWidget {
  final GameState gameState;
  final Player player;
  final Function(int) onSquareClicked;
  const GameBoardWidget({super.key, required this.gameState,required this.player,required this.onSquareClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,

        ),
        itemCount: gameState.fields.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildGridTile(index);
        },
      ),
    );
  }
  Widget buildGridTile(int index) {
    return GestureDetector(
      onTap: () {
        bool condition = player == Player.p1
            ? gameState.status == GameStatus.p1Turn
            : gameState.status == GameStatus.p2Turn;
        if (condition) {
          onSquareClicked(index);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Center(
          child: Text(
            getPlayerSymbol(gameState.fields[index]),
            style: const TextStyle(fontSize: 90, color: Colors.white),
          ),
        ),
      ),
    );
  }

  String getPlayerSymbol(Player? player) {
    if (player == Player.p1) {
      return 'X';
    } else if (player == Player.p2) {
      return 'O';
    }
    return '';
  }
}


