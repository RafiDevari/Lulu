import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/game_select_controller.dart';

class GameSelectView extends GetView<GameSelectController> {
  const GameSelectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Game'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.games.length,
        itemBuilder: (context, index) {
          final game = controller.games[index];
          return Card(
            child: ListTile(
              title: Text(game['name']!),
              onTap: () => controller.toGame(game['route']!),
            ),
          );
        },
      ),
    );
  }
}
