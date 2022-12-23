import 'dart:core';

class PetrSticker {
  String name;
  String creator;
  DateTime dropTime;
  int numLikes;
  String imgPath;
  String creatorLink;

  PetrSticker(
      {required this.name,
      required this.creator,
      required this.dropTime,
      required this.numLikes,
      required this.imgPath,
      required this.creatorLink});
}
