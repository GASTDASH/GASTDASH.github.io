import 'package:flutter/widgets.dart';

class BackgroundProvider extends ChangeNotifier {
  double _topOffset = 0;

  double get topOffset => _topOffset;
  set topOffset(double newOffset) {
    _topOffset = newOffset;
    notifyListeners();
  }
}
