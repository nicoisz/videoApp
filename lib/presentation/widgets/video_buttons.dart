import 'package:flutter/material.dart';
import 'package:videoapp/config/helpers.dart/human_formats.dart';
import 'package:videoapp/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       _CustomIconButton(value: video.likes, iconData: Icons.favorite, color: Colors.red),
       _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye, color: Colors.white)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({super.key, required this.value, required this.iconData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
            )),
            Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
