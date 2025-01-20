import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc.dart';
import 'package:somnium/repositories/music_rep.dart';

class SongBloc extends Bloc<SongsEvent, SongState> {
  final MusicRepository repository;

  SongBloc({required this.repository}) : super(const SongsLoadingState()) {
    on<LoadSongsEvent>((event, emit) async {
      print('LoadSongsEvent received'); // Debug print
      emit(const SongsLoadingState());

      try {
        print(
            'Fetching songs for category: ${event.category.title}'); // Debug print
        final songs = await repository.getSongs(event.category);
        print('Songs fetched: ${songs.length}'); // Debug print
        emit(SongsLoadedState(songs));
      } catch (e) {
        print('Error loading songs: $e'); // Debug print
        emit(SongsErrorState(const [], e.toString()));
      }
    });
  }
}
