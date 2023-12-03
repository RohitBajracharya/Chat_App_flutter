import 'package:chat_app_flutter/src/constants/consts.dart';

GestureDetector searchField(title) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      width: double.infinity,
      color: appColor.withOpacity(0.1),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "$title",
            hintStyle: TextStyle(color: appColor.withOpacity(0.5)),
            prefixIcon: Icon(MdiIcons.magnify, color: appColor.withOpacity(0.5)),
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
