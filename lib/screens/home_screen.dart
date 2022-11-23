import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../widgets/player_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        PlayerButton(player: player, index: 1, colors: Colors.white),
        PlayerButton(player: player, index: 2, colors: Colors.black),
        PlayerButton(player: player, index: 3, colors: Colors.white),
        PlayerButton(player: player, index: 4, colors: Colors.black),
        PlayerButton(player: player, index: 5, colors: Colors.white),
        PlayerButton(player: player, index: 6, colors: Colors.black),
        PlayerButton(player: player, index: 7, colors: Colors.white),
      ])),
    );
  }
}
