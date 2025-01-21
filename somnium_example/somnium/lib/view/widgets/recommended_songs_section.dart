import './widgets.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/bloc/songs_bloc/bloc.dart';

class RecommendedSongsSection extends StatelessWidget {
  const RecommendedSongsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, categoryState) {
        if (categoryState is CategoriesLoadedState) {
          try {
            final recommendedCategory = categoryState.categories.firstWhere(
              (category) => category.title.toLowerCase() == 'preporuceno',
              orElse: () => categoryState.categories.first,
            );

            context.read<SongBloc>().add(LoadSongsEvent(category: recommendedCategory));

            return SizedBox(
              height: 180,
              width: 800,
              child: BlocBuilder<SongBloc, SongState>(
                builder: (context, songState) {
                  return switch (songState) {
                    SongsLoadingState() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    SongsLoadedState() when songState.songs.isEmpty => const Center(
                        child: Text(
                          'No songs available',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    SongsLoadedState() => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songState.songs.length,
                        itemBuilder: (context, index) {
                          final song = songState.songs[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: RecommendedSongCard(song: song),
                          );
                        },
                      ),
                    SongsErrorState() => Center(
                        child: Text(
                          'Error: ${songState.error}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    _ => const SizedBox(),
                  };
                },
              ),
            );
          } catch (e) {
            return const Center(
              child: Text(
                'No recommended category found',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
        }
        return const SizedBox();
      },
    );
  }
}
