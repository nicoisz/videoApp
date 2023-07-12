

import 'package:videoapp/domain/datasources/video_posts_datasource.dart';
import 'package:videoapp/domain/entities/video_post.dart';

import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';

class LocalVideoDataSource implements VideoPostDataSource{
  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userId) {
    // TODO: implement getFavouriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async{
    await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts.map((e) =>
     LocalVideoModel.fromJson(e).toVideoPostEntity()).toList();

    return newVideos;
  }
  
}