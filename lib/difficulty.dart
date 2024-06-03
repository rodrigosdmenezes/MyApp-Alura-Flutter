import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final difficultyLevel;

  const Difficulty({
    super.key,
    required this.difficultyLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.stars,
          size: 15,
          color: ( difficultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.stars,
          size: 15,
          color: ( difficultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.stars,
          size: 15,
          color: ( difficultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.stars,
          size: 15,
          color: ( difficultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.stars,
          size: 15,
          color: ( difficultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}