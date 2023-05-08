import 'package:flutter/material.dart';
import 'package:flutter_dashboard/responsive.dart';
import 'package:flutter_dashboard/widgets/profile/widgets/notifications.dart';
import 'package:flutter_dashboard/widgets/profile/widgets/profile_info_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/animated_switch.dart';

class Profile extends ConsumerWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              // bottomLeft:
              // Radius.circular(Responsive.isMobile(context) ? 10 : 30.0),
              // topLeft: Radius.circular(Responsive.isMobile(context) ? 10 : 30.0),
              ),
          color: Theme.of(context).cardColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/avatar.png",
                  height: 72,width: 72,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Mst. Mina",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Edit Profile Info",
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(Responsive.isMobile(context) ? 15 : 20.0),
                  child: const WeightHeightBloodCard(),
                ),
                const AnimatedSwitching(),
                SizedBox(
                  height: Responsive.isMobile(context) ? 20 : 40,
                ),
                Notifications()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
