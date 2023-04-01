import 'package:flutter/material.dart';
import 'package:personalitytest/main.dart';
import 'package:video_player/video_player.dart';

class VideoDemo extends StatefulWidget {
  VideoDemo() : super();

  final String title = "Video Demo";

  @override
  VideoDemoState createState() => VideoDemoState();
}

class VideoDemoState extends State<VideoDemo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/Video/DrKang.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(10.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("School of Medicine"),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(children: [
          FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          Align(
            alignment: Alignment.topLeft,

            child: Text(
              "\n   Lesson 1: Medical Tools\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            height: 20.0,
            color: Colors.black87,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100],
                  ),
                  child: Row(
                    children: [
                      Image(
                          width: 150,
                          image: AssetImage("assets/images/doctor1.jpg")),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Lesson 2: Clinical Skills and \nPractical Procedures", style: TextStyle(color: Colors.black87))
                    ],
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100],
                  ),
                  child: Row(
                    children: [
                      Image(
                          width: 150,
                          image: AssetImage("assets/images/doctor2.jpg")),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Lesson 3: \nClinical Communication", style: TextStyle(color: Colors.black87))
                    ],
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100],
                  ),
                  child: Row(
                    children: [
                      Image(
                          width: 150,
                          image: AssetImage("assets/images/doctor3.jpg")),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Lesson 4: \nUse of Medicine", style: TextStyle(color: Colors.black87))
                    ],

                  ),
                )

              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[300],
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            color: Colors.white),
      ),
    );
  }
}
