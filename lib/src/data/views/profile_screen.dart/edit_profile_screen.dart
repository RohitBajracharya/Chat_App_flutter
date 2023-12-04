import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/bottom_navbar.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                textField(titleText: "your name", textfieldValue: "Gail Forcewind"),
                30.heightBox,
                textField(titleText: "your phone", textfieldValue: "9876543210"),
                30.heightBox,
                roundedButton(
                  buttonColor: appColor,
                  title: "Update",
                  routeName: RouteHelper.getProfileScreen(),
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column textField({titleText, textfieldValue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "$titleText".text.uppercase.color(appColor).semiBold.size(normalText).make(),
        TextField(
          controller: TextEditingController(text: "$textfieldValue"),
        ),
      ],
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
                    onPressed: () {},
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
