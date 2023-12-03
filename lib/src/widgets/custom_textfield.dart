import 'package:chat_app_flutter/src/constants/consts.dart';

Widget customTextField({title, icon, controller, isPassword}) {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: title,
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: appColor)),
      prefixIcon: Icon(icon),
      prefixIconColor: appColor,
    ),
  );
}
