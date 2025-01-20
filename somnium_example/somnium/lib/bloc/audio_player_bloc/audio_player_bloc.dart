// // audio_player_bloc.dart

// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:somnium/models/song.dart';
// import './bloc.dart';

// class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
//   final Song song;
//   StreamSubscription? _positionSubscription;
//   StreamSubscription? _durationSubscription;
//   StreamSubscription? _playingSubscription;

//   AudioPlayerBloc({required this.song}) : super(AudioPlayerState.initial()) {
//     on<InitializeAudioPlayerEvent>(_onInitializeAudioPlayer);
//     on<PlayAudioEvent>(_onPlayAudio);
//     on<PauseAudioEvent>(_onPauseAudio);
//     on<SeekAudioEvent>(_onSeekAudio);
//     on<UpdatePositionEvent>(_onUpdatePosition);
//     on<UpdateDurationEvent>(_onUpdateDuration);
//     on<UpdatePlayingStateEvent>(_onUpdatePlayingState);

//     add(InitializeAudioPlayerEvent());
//   }

//   void _onInitializeAudioPlayer(
//       InitializeAudioPlayerEvent event, Emitter<AudioPlayerState> emit) async {
//     try {
//       emit(state.copyWith(isLoading: true, error: null));

//       await state.audioPlayer.setUrl(song.songUrl);

//       _positionSubscription?.cancel();
//       _durationSubscription?.cancel();
//       _playingSubscription?.cancel();

//       _positionSubscription = state.audioPlayer.positionStream.listen(
//         (position) => add(UpdatePositionEvent(position)),
//       );

//       _durationSubscription = state.audioPlayer.durationStream.listen(
//         (duration) => add(UpdateDurationEvent(duration ?? Duration.zero)),
//       );

//       _playingSubscription = state.audioPlayer.playingStream.listen(
//         (playing) => add(UpdatePlayingStateEvent(playing)),
//       );

//       emit(state.copyWith(
//         isInitialized: true,
//         isLoading: false,
//       ));

//       add(PlayAudioEvent());
//     } catch (e) {
//       emit(state.copyWith(
//         isLoading: false,
//         error: 'Error loading audio: $e',
//       ));
//     }
//   }

//   void _onPlayAudio(
//       PlayAudioEvent event, Emitter<AudioPlayerState> emit) async {
//     try {
//       if (state.isInitialized) {
//         await state.audioPlayer.play();
//       }
//     } catch (e) {
//       emit(state.copyWith(error: 'Error playing audio: $e'));
//     }
//   }

//   void _onPauseAudio(
//       PauseAudioEvent event, Emitter<AudioPlayerState> emit) async {
//     try {
//       if (state.isInitialized) {
//         await state.audioPlayer.pause();
//       }
//     } catch (e) {
//       emit(state.copyWith(error: 'Error pausing audio: $e'));
//     }
//   }

//   void _onSeekAudio(
//       SeekAudioEvent event, Emitter<AudioPlayerState> emit) async {
//     try {
//       if (state.isInitialized) {
//         await state.audioPlayer.seek(event.position);
//       }
//     } catch (e) {
//       emit(state.copyWith(error: 'Error seeking audio: $e'));
//     }
//   }

//   void _onUpdatePosition(
//       UpdatePositionEvent event, Emitter<AudioPlayerState> emit) {
//     emit(state.copyWith(currentPosition: event.position));
//   }

//   void _onUpdateDuration(
//       UpdateDurationEvent event, Emitter<AudioPlayerState> emit) {
//     emit(state.copyWith(totalDuration: event.duration));
//   }

//   void _onUpdatePlayingState(
//       UpdatePlayingStateEvent event, Emitter<AudioPlayerState> emit) {
//     emit(state.copyWith(isPlaying: event.isPlaying));
//   }

//   @override
//   Future<void> close() async {
//     await _positionSubscription?.cancel();
//     await _durationSubscription?.cancel();
//     await _playingSubscription?.cancel();
//     await state.audioPlayer.dispose();
//     return super.close();
//   }
// }
