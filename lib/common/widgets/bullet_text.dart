import 'package:flutter/material.dart';

class BulletWithText extends StatelessWidget {
  const BulletWithText({super.key, this.txt});

  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
           const Icon(
            Icons.circle,
            size: 5,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(txt ?? "",style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}