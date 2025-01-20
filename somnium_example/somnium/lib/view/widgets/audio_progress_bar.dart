import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioProgressBar extends StatelessWidget {
  final Duration currentPosition;
  final Duration totalDuration;
  final AudioPlayer audioPlayer;

  const AudioProgressBar({
    super.key,
    required this.currentPosition,
    required this.totalDuration,
    required this.audioPlayer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          activeColor: Colors.white,
          inactiveColor: Colors.white38,
          value: currentPosition.inSeconds.toDouble(),
          max: totalDuration.inSeconds.toDouble(),
          onChanged: (value) {
            audioPlayer.seek(Duration(seconds: value.toInt()));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatDuration(currentPosition),
                style: const TextStyle(color: Colors.white70),
              ),
              Text(
                formatDuration(totalDuration),
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      
      SizedBox(height: 20,)
      ],
    );
  }

  String formatDuration(Duration duration) {
    String minutes = duration.inMinutes.toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }
}
