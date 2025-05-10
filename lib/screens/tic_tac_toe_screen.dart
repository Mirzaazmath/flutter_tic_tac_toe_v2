import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/widgets/game_board_widget.dart';
import 'package:get/get.dart';

import '../core/constants/enums.dart';
import '../core/models/game_state.dart';
import '../core/p2p_manager.dart';
import '../widgets/background_widget.dart';


class TicTacToeScreen extends StatefulWidget {
  final P2pManager p2pManager;

  const TicTacToeScreen({super.key, required this.p2pManager});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  Player get player => widget.p2pManager.player;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWidget(
        child: SafeArea(
          child: Obx(() {
            final gameState = Get.find<GameState>();
            print(gameState.status);
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      gameState.formattedStatus(player),
                      style: textTheme.displayMedium?.copyWith(
                          color: gameState.formattedStatusColor(player),
                          shadows: [
                            const BoxShadow(color: Colors.black38, blurRadius: 8)
                          ]),
                    ),
                  ),
                ),
                GameBoardWidget(
                    gameState: gameState,
                    player: player,
                    onSquareClicked: (index) {
                      gameState.claimField(index);
                      widget.p2pManager.sendGameState(gameState);
                    }),
                const Spacer()
              ],
            );
          }
          ),
        ));
  }
}