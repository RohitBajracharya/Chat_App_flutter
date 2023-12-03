import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/data/controllers/main_controller.dart';
import 'package:chat_app_flutter/src/widgets/bottom_navbar.dart';
import 'package:chat_app_flutter/src/widgets/search_field.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            appBar(),
            searchField("Search"),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return messageContainer();
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget messageContainer() {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: textColor, width: 0.2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //profile picture
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/pp1.jpg"),
          ),
          20.widthBox,
          //username and icon
          usernameNIcon(),
          const Spacer(),
          //msg time and no of message
          timeNdetailIcon(),
        ],
      ),
    ).onTap(() {
      Get.toNamed(RouteHelper.getMessageScreen());
    });
  }

  Widget timeNdetailIcon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //msg time
        "20.53".text.semiBold.color(Colors.grey).make(),
        10.widthBox,
        //detailicon
        Icon(MdiIcons.informationOutline, color: appColor, size: 36),
      ],
    );
  }

  Column usernameNIcon() {
    String msg = "Hello my name is Dierdre Jhon. How are you?";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //username
        "Deirdre Jhon".text.size(normalText).semiBold.color(appColor).make(),
        //last message and delivered icon
        Row(
          children: [
            Icon(
              MdiIcons.arrowTopRight,
              size: 16,
              color: appColor,
            ),
            Icon(
              MdiIcons.arrowBottomLeft,
              size: 16,
              color: Colors.red,
            ),
            "Mobile".text.size(miniText).color(Colors.grey).make(),
          ],
        ),
      ],
    );
  }

  Container appBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      height: 60,
      color: appColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(MdiIcons.arrowLeft, color: Colors.white).onTap(() {
            var mainController = Get.find<MainController>();
            mainController.currentNavIndex.value = 0;
            Get.back();
          }),
          Row(
            children: [
              Container(
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  border: Border.all(color: Colors.white),
                ),
                child: "All".text.align(TextAlign.center).white.size(15.0).make(),
              ),
              Container(
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  border: Border.all(color: Colors.white),
                ),
                child: "Missed".text.semiBold.align(TextAlign.center).color(appColor).size(15.0).make(),
              ),
            ],
          ),
          Icon(MdiIcons.contacts, color: Colors.white).onTap(() {
            Get.toNamed(RouteHelper.getContactScreen());
          }),
        ],
      ),
    );
  }
}
