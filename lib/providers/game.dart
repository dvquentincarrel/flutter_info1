import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demineur/providers/player.dart';

final gameProvider = StateNotifierProvider<GameState, Map<String, Object>>((ref) => GameState());

class GameState extends StateNotifier<Map<String, Object>>{

  GameState() : super({
    'difficulty': 0,
    'score': 0,
    'wasWon': false,
  });

  // Only updates provided values
  void updateGame({int? difficulty, int? score, bool? wasWon, Stopwatch? timer}){
    state['difficulty'] = difficulty ?? state['difficulty']!;
    state['score'] = score ?? state['score']!;
    state['wasWon'] = wasWon ?? state['wasWon']!;
    state = {...state};
  }

}

final durationProvider = StateProvider<Duration>((ref) => Duration(hours:2));
