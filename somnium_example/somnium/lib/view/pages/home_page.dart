

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnium/bloc/categories_bloc/bloc.dart';
import 'package:somnium/view/widgets/widgets.dart';
import '../../bloc/songs_bloc/bloc.dart';
import '../../repositories/music_rep.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        body: Stack(
          children: [
            BackgroundMain(),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/photo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFF0D0338).withOpacity(0.5),
                        const Color(0xFF0D0338),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      const Center(
                        child: Text(
                          'Just for you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: AssetImage('assets/stars.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Center(
                          child: ImageIcon(
                            AssetImage("assets/play.png"),
                            color: Colors.white,
                            size: 64,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding:
                            const EdgeInsets.all(2), 
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.purple,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.transparent, 
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFB800),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  'Somnium Premium',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Hey, Nikola experience our premium\npackage, tailored just for you',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '50% OFF',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Only RSD34.51/month',
                                style: TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: const Size(double.infinity, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text('Claim Now!'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(Icons.newspaper,
                              color: Colors.white), 
                          SizedBox(width: 8),
                          Text(
                            'News',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      QuickActions(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          Row(
                            children: [
                              Icon(Icons.book, color: Colors.white),
                              SizedBox(
                                  width:
                                      8),
                              Text(
                                'You should know',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                          
                                ),
                              ),
                            ],
                          ),
      
                          Text(
                            'See All',
                            style: TextStyle(
                              color:
                                  Colors.blue, 
                              fontSize: 14,
                          
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1551),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.play_circle_fill, color: Colors.white),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                'When can you drink coffee\nwithout disturbing your sleep?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
      
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            ImageIcon(AssetImage('assets/Group 8894.png'),
                                color: Colors.white), 
                            SizedBox(width: 8),
                            Text(
                              'Recommended songs',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      RecommendedSongsSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
