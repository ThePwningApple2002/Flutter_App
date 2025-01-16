import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnium/view/widgets/widgets.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/bloc/songs_bloc/bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
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
                  if (state is CategoriesLoadedState) {
                    return CategoryList(categories: state.categories);
                  } else if (state is CategoriesLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              Expanded(
                child: BlocBuilder<SongBloc, SongState>(
                  builder: (context, state) {
                    if (state is SongsLoadedState) {
                      return SongsGrid(songs: state.songs);
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
