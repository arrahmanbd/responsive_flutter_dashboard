import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class WeightHeightBloodCard extends StatelessWidget {
  const WeightHeightBloodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          details("Followers", "152M"),
          details("Earning", "2500\$"),
          details("Blood Type", "O+"),
        ],
      ),
    );
  }

  Widget details(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
