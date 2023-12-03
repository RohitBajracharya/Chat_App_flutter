import 'package:chat_app_flutter/src/constants/consts.dart';

Widget roundedButton({title, buttonColor, routeName, context, message}) {
  return "$title".text.uppercase.semiBold.white.size(normalText).makeCentered().box.margin(const EdgeInsets.symmetric(horizontal: 20.0)).color(buttonColor).size(double.infinity, 50).roundedLg.make().onTap(() {
    if (routeName == null) {
      VxToast.show(context, msg: message, showTime: 3000, bgColor: Colors.red, textSize: normalText);
    } else {
      Get.toNamed(routeName);
    }
  });
}
