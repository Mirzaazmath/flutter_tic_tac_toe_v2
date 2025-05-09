import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/core/constants/enums.dart';
import 'package:flutter_tic_tac_toe/core/models/game_state.dart';
import 'package:flutter_tic_tac_toe/widgets/background_widget.dart';
import 'package:flutter_tic_tac_toe/widgets/game_board_widget.dart';

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  GameState gameState = GameState();
  Player player = Player.p1;
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  gameState.formattedStatus(player),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: gameState.formattedStatusColor(player),
                      shadows: [
                        const BoxShadow(color: Colors.black38, blurRadius: 8)
                      ]),
                ),),

            ),
            Expanded(
              child: GameBoardWidget(
                gameState: gameState,
                player: player,
                onSquareClicked: (index) {
                  gameState.claimField(index);
                  setState(() {});
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
