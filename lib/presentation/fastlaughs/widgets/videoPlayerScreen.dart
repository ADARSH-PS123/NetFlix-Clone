
import 'package:flix/presentation/fastlaughs/widgets/screen_page_view_child.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerScreen({Key? key,required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

late VideoPlayerController _controller;

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
widget.videoUrl
      )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

  }

  @override
  Widget build(BuildContext context) {
    


 
    if (_controller.value.isInitialized) {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
      return Center(
          child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ));
    } else {
      return Container();
    }
  }

  @override
  void dispose() {
    super.dispose();
    
    _controller.dispose();
  }
}
