import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class TestimonialWidget extends StatelessWidget {
  const TestimonialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(profile),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Dianne Russell",
                  style: TextStyle(
                      color: Color(0xff09051C),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '12 April 2021',
                  style: TextStyle(
                      color: const Color(0xff3B3B3B).withOpacity(0.3),
                      fontSize: 16),
                ),
              ],
            ),
            SvgPicture.asset(fiveStarSvg)
          ],
        ),
      ),
    );
  }
}