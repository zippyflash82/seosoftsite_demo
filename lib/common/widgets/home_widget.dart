
import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seosoftsite_demo/common/widgets/testimonial_widget.dart';

import '../constants.dart';
import 'bullet_text.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          const Spacer(),
          ContainerPlus(
            radius: RadiusPlus.only(topLeft: 50, topRight: 50),
            width: Get.width,
            height: Get.height * 0.75,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset(handleSvg),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: SvgPicture.asset(popularSvg),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(locationSvg),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(loveSvg)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        "Rainbow Sandwich Sugarless",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(mapPinSvg),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '19 Km',
                            style: TextStyle(
                                color: const Color(0xff3B3B3B).withOpacity(0.3),
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(starSvg),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4,8 Rating',
                            style: TextStyle(
                                color: const Color(0xff3B3B3B).withOpacity(0.3),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      longText,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const BulletWithText(txt: 'Strowberry'),
                  const BulletWithText(txt: 'Cream'),
                  const BulletWithText(txt: 'Wheat'),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      longText2,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerPlus(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Testimonials",
                      style: TextStyle(
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  // Can Be replaced With ListView 
                  const SizedBox(
                    height: 20,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TestimonialWidget(),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}




