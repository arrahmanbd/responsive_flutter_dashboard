import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier(): super(0) {
    selection(0);
  }
  void selection(int index) {
    state = index;
  }
}

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, int>((ref) {
  return NavigationNotifier();
});
