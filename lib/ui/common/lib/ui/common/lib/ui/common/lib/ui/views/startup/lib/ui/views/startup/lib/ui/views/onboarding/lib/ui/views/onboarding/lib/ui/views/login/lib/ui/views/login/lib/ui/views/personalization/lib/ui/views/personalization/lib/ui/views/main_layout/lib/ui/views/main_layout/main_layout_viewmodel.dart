import 'package:stacked/stacked.dart';

class MainLayoutViewModel extends BaseViewModel {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    rebuildUi();
  }
}
