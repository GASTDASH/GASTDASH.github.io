import 'package:gastdash_website_flutter/features/index/index.dart';

class ReleaseModel {
  final String name;
  final String videoUrl;

  const ReleaseModel({required this.name, required this.videoUrl});

  factory ReleaseModel.fromEntity(Release entity) =>
      ReleaseModel(name: entity.name, videoUrl: entity.videoUrl);
  Release toEntity() => Release(name: name, videoUrl: videoUrl);
}
