import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:go_router/go_router.dart';
import 'package:somnium/models/song.dart';
import 'package:somnium/view/widgets/widgets.dart';

class IndMusicPage extends StatefulWidget {
  final Song song;

  const IndMusicPage({super.key, required this.song});

  @override
  State<IndMusicPage> createState() => IndMusicPageState();
}

class IndMusicPageState extends State<IndMusicPage> {
  late AudioPlayer audioPlayer;
  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    initAudioPlayer();
  }

  Future<void> initAudioPlayer() async {
    try {
      await audioPlayer.setUrl(widget.song.songUrl);

      audioPlayer.durationStream.listen((duration) {
        setState(() {
          totalDuration = duration ?? Duration.zero;
        });
      });

      audioPlayer.positionStream.listen((position) {
        setState(() {
          currentPosition = position;
        });
      });
    } catch (e) {
      print('Error loading audio: $e');
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.song.imageUrl),
                fit: BoxFit.cover, 
              ),
            ),
          ),
    
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          Column(
            children: [

              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    context.go("/main_page"); 
                  },
                ),
              ),
    
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               
                    Text(
                      widget.song.title,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
   
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                      AudioControls(audioPlayer: audioPlayer),
                  AudioProgressBar(
                    currentPosition: currentPosition,
                    totalDuration: totalDuration,
                    audioPlayer: audioPlayer,
                  ),
            
      
              
                  const SizedBox(height: 32),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
