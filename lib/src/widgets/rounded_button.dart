import 'package:chat_app_flutter/src/constants/consts.dart';

Widget roundedButton({title, buttonColor, routeName}) {
  return "$title".text.uppercase.semiBold.white.size(normalText).makeCentered().box.margin(const EdgeInsets.symmetric(horizontal: 20.0)).color(buttonColor).size(double.infinity, 50).roundedLg.make().onTap(() {
    Get.toNamed(routeName);
  });
}
