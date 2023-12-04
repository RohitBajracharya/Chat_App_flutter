import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/bottom_navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: "Profile".text.white.make(),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: Column(
        children: [
          imgNusernameNnumber(),
          profileMenuItem(),
        ],
      ),
    );
  }

  Expanded profileMenuItem() {
    return Expanded(
      child: ListView.builder(
        itemCount: profileItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              var route = profileItems[index]['route'];
              Get.toNamed(route);
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                children: [
                  Icon(
                    profileItems[index]['icons'],
                    color: appColor,
                  ),
                  20.widthBox,
                  "${profileItems[index]['itemName']}".text.size(normalText).make(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container imgNusernameNnumber() {
    return Container(
      height: 250,
      width: double.infinity,
      color: appColor.withOpacity(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                ClipOval(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: appColor.withOpacity(0.1)),
                      shape: BoxShape.circle,
                    ),
                    child: const Image(
                      image: AssetImage("assets/images/pp1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 75,
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.getEditProfileScreen());
                    },
                    icon: Icon(
                      MdiIcons.pencilOutline,
                      color: Colors.white,
                    ).box.color(appColor).roundedFull.padding(const EdgeInsets.all(5.0)).make(),
                  ),
                ),
              ],
            ),
          ),
          "Gail ForceWind".text.color(appColor).semiBold.size(normalText).make(),
          "9876543210".text.color(Colors.black54).semiBold.size(smallText).make(),
        ],
      ),
    );
  }
}
