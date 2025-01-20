// import 'package:just_audio/just_audio.dart';

// class AudioPlayerState {
//   final AudioPlayer audioPlayer;
//   final Duration currentPosition;
//   final Duration totalDuration;
//   final bool isPlaying;
//   final bool isInitialized;
//   final bool isLoading;
//   final String? error;

//   AudioPlayerState({
//     required this.audioPlayer,
//     required this.currentPosition,
//     required this.totalDuration,
//     required this.isPlaying,
//     required this.isInitialized,
//     required this.isLoading,
//     this.error,
//   });

//   factory AudioPlayerState.initial() {
//     return AudioPlayerState(
//       audioPlayer: AudioPlayer(),
//       currentPosition: Duration.zero,
//       totalDuration: Duration.zero,
//       isPlaying: false,
//       isInitialized: false,
//       isLoading: false,
//       error: null,
//     );
//   }

//   AudioPlayerState copyWith({
//     AudioPlayer? audioPlayer,
//     Duration? currentPosition,
//     Duration? totalDuration,
//     bool? isPlaying,
//     bool? isInitialized,
//     bool? isLoading,
//     String? error,
//   }) {
//     return AudioPlayerState(
//       audioPlayer: audioPlayer ?? this.audioPlayer,
//       currentPosition: currentPosition ?? this.currentPosition,
//       totalDuration: totalDuration ?? this.totalDuration,
//       isPlaying: isPlaying ?? this.isPlaying,
//       isInitialized: isInitialized ?? this.isInitialized,
//       isLoading: isLoading ?? this.isLoading,
//       error: error ?? this.error,
//     );
//   }
// }
