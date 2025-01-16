import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc.dart';
import 'package:somnium/repositories/music_rep.dart';

class SongBloc extends Bloc<SongsEvent, SongState> {
  final MusicRepository repository;

  SongBloc({required this.repository}) : super(const SongsLoadingState()) {
    on<LoadSongsEvent>(onLoadSongs);
  }

  Future<void> onLoadSongs(
    LoadSongsEvent event,
    Emitter<SongState> emit,
  ) async {
    emit(const SongsLoadingState());

    try {
      final songs = await repository.getSongs(event.category);
      emit(SongsLoadedState(songs));
    } catch (e) {
      emit(SongsErrorState(const [], e.toString()));
    }
  }
}
