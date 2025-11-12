import 'package:gastdash_website_flutter/features/index/index.dart';

abstract class ReleaseRepository {
  Future<List<Release>> getReleases();
}
