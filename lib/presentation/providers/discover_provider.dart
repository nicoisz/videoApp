import 'package:flutter/material.dart';
import 'package:videoapp/domain/entities/video_post.dart';
import 'package:videoapp/infrastructure/models/local_video_model.dart';
import 'package:videoapp/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{

  //TODO: repository, betasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async{

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity()).toList();
    initialLoading = false;
  videos.addAll(newVideos);
    notifyListeners();
  }

}