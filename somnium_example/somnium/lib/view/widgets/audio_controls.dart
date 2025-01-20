import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioControls extends StatelessWidget {
  final AudioPlayer audioPlayer;

  const AudioControls({super.key, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.equalizer),
            color: Colors.white,
            iconSize: 28,
            onPressed: () {
              // Equalizer or additional features can be implemented here
            },
          ),
          const SizedBox(width: 20),
          IconButton(
            icon: Icon(
              audioPlayer.playing ? Icons.pause_circle : Icons.play_circle,
            ),
            color: Colors.white,
            iconSize: 64,
            onPressed: () {
              audioPlayer.playing ? audioPlayer.pause() : audioPlayer.play();
            },
          ),
          const SizedBox(width: 20),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            color: Colors.white,
            iconSize: 28,
            onPressed: () {
              // Add to favorite logic
            },
          ),
        ],
      ),
    );
  }
}
