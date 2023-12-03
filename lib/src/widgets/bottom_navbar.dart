import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/data/controllers/main_controller.dart';

Obx bottomNavigationBar() {
  var controller = Get.put(MainController());
  return Obx(() => BottomNavigationBar(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        onTap: (value) {
          controller.currentNavIndex.value = value;
          switch (value) {
            case 0:
              Get.toNamed(RouteHelper.getChatScreen());
              break;
            case 1:
              Get.toNamed(RouteHelper.getPhoneScreen());
              break;
            case 2:
              Get.toNamed(RouteHelper.getCameraScreen());
              break;
            case 3:
              Get.toNamed(RouteHelper.getProfileScreen());
              break;
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: controller.currentNavIndex.value,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.messageOutline, color: controller.currentNavIndex.value == 0 ? appColor : textColor),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.phoneOutline, color: controller.currentNavIndex.value == 1 ? appColor : textColor),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.cameraOutline, color: controller.currentNavIndex.value == 2 ? appColor : textColor),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountOutline, color: controller.currentNavIndex.value == 3 ? appColor : textColor),
            label: "User",
          ),
        ],
      ));
}
