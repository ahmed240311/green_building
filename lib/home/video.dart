import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController _cntroller2050;

  void _actionState(int controller_number) {
    setState(() {
      if (controller_number == 1) {
        _cntroller2050.value.isPlaying
            ? _cntroller2050.pause()
            : _cntroller2050.play();
      }
    });
  }
  @override
  void initState() {
    super.initState();
    _cntroller2050 = VideoPlayerController.asset("assets/images/video.mp4")
      ..initialize().then((_) {
        _cntroller2050.play();
      });


  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Stack(children: [
          FittedBox(
            fit: BoxFit.fill,
            child: SizedBox(
              width: size.width * 2,
              height: size.height * .5,
              child: VideoPlayer(_cntroller2050),
            ),
          ),
          Positioned(
            width: size.width * .8,
            height: size.height * .22,
            child: IconButton(
              icon: Icon(
                Icons.pause,
                size: 70.0,
                color: Colors.black12.withOpacity(.02),
              ),
              onPressed: () {
                _actionState(1);
              },
            ),
          )
        ]),
      ],
    );
  }
  @override
  void dispose() {
    super.dispose();
    _cntroller2050.dispose();

  }
}


