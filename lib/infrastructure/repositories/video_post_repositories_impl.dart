

import 'package:videoapp/domain/datasources/video_posts_datasource.dart';

import '../../domain/entities/video_post.dart';
import '../../domain/repositories/video_post_repository.dart';

class VideoPostRepositories implements VideoPostRepository{

  final VideoPostDataSource videosDatasource;

  VideoPostRepositories({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userId) {
    // TODO: implement getFavouriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videosDatasource.getTrendingVideoByPage(page);
  }

}