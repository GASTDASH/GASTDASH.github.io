import 'package:flutter/widgets.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class ReleaseProvider extends ChangeNotifier {
  ReleaseProvider({required ReleaseRepository releaseRepository})
    : _releaseRepository = releaseRepository;

  final ReleaseRepository _releaseRepository;

  List<Release> _releases = const [];
  List<Release> get releases => _releases;

  Future<void> getReleases() async {
    _releases = await _releaseRepository.getReleases();
    notifyListeners();
  }
}
