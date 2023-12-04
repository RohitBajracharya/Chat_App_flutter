import 'package:chat_app_flutter/src/constants/consts.dart';

List<Map<String, dynamic>> profileItems = [
  {
    "icons": MdiIcons.forumOutline,
    "itemName": "Chats",
    "route":RouteHelper.getChatScreen(),
  },
  {
    "icons": MdiIcons.accountOutline,
    "itemName": "Account",
    "route": RouteHelper.getEditProfileScreen(),

  },
  {
    "icons": MdiIcons.bellOutline,
    "itemName": "Notifications",
    "route": RouteHelper.getChatScreen(),

  },
  {
    "icons": MdiIcons.emailOpenHeartOutline,
    "itemName": "Invite a friend",
    "route": RouteHelper.getChatScreen(),

  },
  {
    "icons": MdiIcons.faceAgent,
    "itemName": "Help",
    "route": RouteHelper.getChatScreen(),

  },
  {
    "icons": MdiIcons.logout,
    "itemName": "Logout",
    "route": RouteHelper.getSigninScreen(),

  },
];
