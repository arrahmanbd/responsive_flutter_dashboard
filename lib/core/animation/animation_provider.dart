import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimateNotifier extends StateNotifier<double> {
  AnimateNotifier() : super(0) {
    scaleAnimate();
  }
  void scaleAnimate() {
    state = 1.025;
    Future.delayed(const Duration(milliseconds: 250), () {
      state = 1.0;
    });
  }
}

final scaleAnimation = StateNotifierProvider<AnimateNotifier, double>((ref) {
  return AnimateNotifier();
});
