import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayerButton extends StatelessWidget {
  const PlayerButton({
    Key? key,
    required this.player,
    required this.index,
    required this.colors,
  }) : super(key: key);
  final int index;
  final AudioPlayer player;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colors),
          ),
          onPressed: () {
            player.play(AssetSource('note$index.wav'));
          },
          child: Text('')
      ),
    );
  }
}
