import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shareddit/data/models/gif_listing.dart';
import 'package:shareddit/data/models/image_listing.dart';
import 'package:shareddit/data/models/post.dart';
import 'package:http/http.dart' as http;
import 'package:shareddit/data/models/video_listing.dart';

abstract class RedditRepository {
  Future<Post> fetchPost({@required String url});
}

class ConcreteRedditRespository implements RedditRepository {
  List<Post> cachedPosts;

  @override
  Future<Post> fetchPost({String url}) async {
    Post post;
    try {
      http.Response response = await http.get(url + '.json');
      post = await download(response);
    } catch (e) {}
    return post;
  }

  Future<Post> download(http.Response response) async {
    List<Map<String, dynamic>> data = jsonDecode(response.body);
    Post post;
    String filePath, previewPath, title, subreddit;
    var media = data[0]['data']['children'][0]['data']['media'];
    print(data);
    if (media != null) {
      if (media['is_video']) {
        var thing = VideoListing.fromJson(data[0]).data.children[0].data;
        previewPath = thing.thumbnail;
        title = thing.title;
        subreddit = thing.subreddit;

        String dir = (await getDownloadsDirectory()).path;
        RegExp exp = RegExp(r'https:\/\/v.redd.it\/.+?\/');
        // String audioUrl =
        //     exp.stringMatch(thing.media.redditVideo.fallbackUrl) + 'audio';
        // final video = await FlutterDownloader.enqueue(
        //   url: thing.media.redditVideo.fallbackUrl,
        //   savedDir: dir,
        //   showNotification: true,
        //   openFileFromNotification: false,
        // );

        // final audio = await FlutterDownloader.enqueue(
        //   url: audioUrl,
        //   savedDir:
        //       'the path of directory where you want to save downloaded files',
        //   showNotification: true,
        //   openFileFromNotification: false,
        // );

        // TODO: Merge Audio and Video, then save the file
      } else {
        var thing = GifListing.fromJson(data[0]).data.children[0].data;
        previewPath = thing.thumbnail;
        title = thing.title;
        subreddit = thing.subreddit;

        // TODO: Save GIF
      }
    } else {
      var thing = ImageListing.fromJson(data[0]).data.children[0].data;
      previewPath = thing.thumbnail;
      title = thing.title;
      subreddit = thing.subreddit;

      // TODO: Save Image

    }

    print([previewPath, title, subreddit]);

    return post;
  }
}
