import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnium/view/widgets/widgets.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/bloc/songs_bloc/bloc.dart';
import 'package:somnium/repositories/music_rep.dart';
import 'package:somnium/models/song.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(
            repository: context.read<MusicRepository>(),
          )..add(LoadCategoriesEvent()),
        ),
        BlocProvider(
          create: (context) => SongBloc(
            repository: context.read<MusicRepository>(),
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: const Color(0xFF0D0338),
        appBar: BarApp(),
        body: Stack(
          children: [
            BackgroundMain(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    return switch (state) {
                      CategoriesLoadedState() => 
                        CategoryList(categories: state.categories),
                      CategoriesLoadingState() => 
                        const Center(child: CircularProgressIndicator()),
                      _ => const SizedBox(),
                    };
                  },
                ),
                Expanded(
                  child: BlocBuilder<SongBloc, SongState>(
                    builder: (context, state) {
                      return switch (state) {
                        SongsLoadedState() => SongsGrid(songs: state.songs),
                        _ => const SizedBox(),
                      };
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}