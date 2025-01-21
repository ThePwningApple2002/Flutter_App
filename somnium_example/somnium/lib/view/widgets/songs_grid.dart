import 'package:flutter/material.dart';
import 'package:somnium/models/song.dart';
import './widgets.dart';

class SongsGrid extends StatelessWidget {
  final List<Song> songs;

  const SongsGrid({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    if (songs.isEmpty) {
      return const Center(
        child: Text(
          'No songs available',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 170,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(songs[0].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 12,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                    ),
                    child: Text(
                      '${songs[0].duration} min',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 8,
                  child: Text(
                    songs[0].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 30,
                      shadows: const [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 2,
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 11 / 12,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: songs.length - 1,
          itemBuilder: (context, index) {
            final song = songs[index + 1];
            return GestureDetector(
              onTap: () {},
              child: SongCard(song: song),
            );
          },
        ),
      ],
    );
  }
}