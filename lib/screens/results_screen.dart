import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final bool isWon;
  final Stopwatch timer;
  final String playerName;

  const ResultScreen({super.key, required this.isWon, required this.timer, required this.playerName});
  @override
  State<StatefulWidget> createState() => _ResultScreen();
}

class _ResultScreen extends State<ResultScreen> {
  

  @override
  Widget build(BuildContext context)
  {
    String message = widget.isWon ? "You have won!" : "You lost.";
    return Scaffold(
      appBar: AppBar(
        title: const Text("TP02/3 - Démineur")
      ),
      body: Center(
      child: Column(
        children: [
          Text(widget.playerName),
          Text(message),
          Text('Duration of your last game: ' + widget.timer.elapsed.toString()),
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Go to main menu'))
          ]
        )
      )
    );
  }
}

