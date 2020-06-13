import 'dart:convert';

import 'package:flutter/foundation.dart';

class Post {
  final String filePath;
  final String previewPath;
  final String title;
  final String subreddit;

  Post({@required this.filePath,
   @required this.previewPath,
   @required this.title,
   @required this.subreddit});

  Post copyWith({
    String filePath,
    String previewPath,
    String title,
    String subreddit,
  }) {
    return Post(
      filePath: filePath ?? this.filePath,
      previewPath: previewPath ?? this.previewPath,
      title: title ?? this.title,
      subreddit: subreddit ?? this.subreddit,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'filePath': filePath,
      'previewPath': previewPath,
      'title': title,
      'subreddit': subreddit,
    };
  }

  static Post fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Post(
      filePath: map['filePath'],
      previewPath: map['previewPath'],
      title: map['title'],
      subreddit: map['subreddit'],
    );
  }

  String toJson() => json.encode(toMap());

  static Post fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(filePath: $filePath, previewPath: $previewPath, title: $title, subreddit: $subreddit)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Post &&
      o.filePath == filePath &&
      o.previewPath == previewPath &&
      o.title == title &&
      o.subreddit == subreddit;
  }

  @override
  int get hashCode {
    return filePath.hashCode ^
      previewPath.hashCode ^
      title.hashCode ^
      subreddit.hashCode;
  }
}
