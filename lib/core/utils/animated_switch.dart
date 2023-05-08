
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/theme_provider.dart';

class AnimatedSwitching extends ConsumerWidget {
  const AnimatedSwitching({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool current = ref.watch(themeProvider);
    return AnimatedToggleSwitch<bool>.dual(
      current: current,
      first: false,
      second: true,
      dif: 50.0,
      borderColor: Colors.transparent,
      borderWidth: 0.0,
      height: 45,
      boxShadow: const [
        BoxShadow(
          color: Colors.transparent,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 1.5),
        ),
      ],
      onChanged: (b) {
        ref.read(themeProvider.notifier).state = b;
       
        return Future.delayed(const Duration(seconds: 2));
      },
      colorBuilder: (b) => b ?Colors.primaries[5] : Colors.green,
      iconBuilder: (value) => !value
          ? const Icon(Icons.light_mode,color: Colors.white,)
          : const Icon(Icons.dark_mode,),
      textBuilder: (value) => value
          ? const Center(child: Text('Dark Mode'))
          : const Center(child: Text('Light Mode')),
    );
    ;
  }
}
