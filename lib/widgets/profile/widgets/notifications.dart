import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/theme/text_theme.dart';
import 'package:flutter_dashboard/model/noti_model.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final List<NotiModel> scheduled = [
    NotiModel(title: "Rupa", date: "Rupa and 6 others your video"),
    NotiModel(title: "⚡ Warning", date: "Account status critical, take action"),
    NotiModel(title: "Surprise ♥", date: "Wednesday is Himu's birthday"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notification",
          style: MyText.subhead(context),
        ),
        const SizedBox(
          height: 12,
        ),
        for (var i = 0; i < scheduled.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            scheduled[i].title,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            scheduled[i].date,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/svg/more.svg')
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
