import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnium/repositories/music_rep.dart';
import 'package:somnium/routes.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/bloc/songs_bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (context) => MusicRepository())],
      child: BlocProvider(
        create: (context) =>
            CategoryBloc(repository: context.read<MusicRepository>())
              ..add(LoadCategoriesEvent()),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is CategoriesLoadedState) {
              final category = state.categories.first;
              return MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                      value: BlocProvider.of<CategoryBloc>(context)),
                  BlocProvider(
                    create: (context) =>
                        SongBloc(repository: context.read<MusicRepository>())
                          ..add(LoadSongsEvent(category: category)),
                  ),
                ],
                child: MaterialApp.router(
                  routerConfig: AppRouter.router,
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
