import 'package:gastdash_website_flutter/features/index/index.dart';

class ReleaseRepositoryImpl implements ReleaseRepository {
  ReleaseRepositoryImpl({required this.localDatasource});

  final ReleaseLocalDatasource localDatasource;

  @override
  Future<List<Release>> getReleases() async =>
      localDatasource.getReleases().map((r) => r.toEntity()).toList();
}
