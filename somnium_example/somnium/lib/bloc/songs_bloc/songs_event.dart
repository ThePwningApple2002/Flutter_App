import 'package:somnium/models/models.dart';

abstract class SongsEvent {}

class LoadSongsEvent extends SongsEvent {
  final Category category;

  LoadSongsEvent({required this.category});
}
