import 'package:flutter/material.dart';
import 'package:videoapp/domain/entities/video_post.dart';
import 'package:videoapp/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder:(context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            //videoplayer + gradiente
            //botones
            Positioned(bottom: 40, right:20 ,child: VideoButtons(video: videoPost)),
          ],
        );
      },

    );
  }
}