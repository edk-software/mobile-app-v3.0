import 'package:rxdart/rxdart.dart';

class AboutBloc {
  // Manage selected tabs
  final _selectedTab = BehaviorSubject<int>();
  Stream<int> get selectedTab => _selectedTab.stream;
  Function(int) get selectTab => _selectedTab.sink.add;

  void dispose() {
    _selectedTab.close();
  }
}
