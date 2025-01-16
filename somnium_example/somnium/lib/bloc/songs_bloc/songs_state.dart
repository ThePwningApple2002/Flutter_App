import 'package:somnium/models/models.dart';

abstract class SongState {
  final List<Song> songs;

  const SongState(this.songs);
}

class SongsLoadingState extends SongState {
  const SongsLoadingState() : super(const []);
}

class SongsLoadedState extends SongState {
  const SongsLoadedState(super.songs);
}

class SongsErrorState extends SongState {
  final String error;
  const SongsErrorState(super.songs, this.error);
}
