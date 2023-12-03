import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/bottom_navbar.dart';
import 'package:chat_app_flutter/src/widgets/search_field.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: mainBody(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Container mainBody() {
    return Container(
      color: appColor.withOpacity(0.1),
      child: Column(
        children: [
          searchField("Search Contacts"),
          contactContainer(imageUrl: "assets/images/pp2.jpg", username: "Gail Forcewind", phoneNumber: "9876543210"),
          "Contacts".text.color(appColor).semiBold.size(normalText).make().box.padding(const EdgeInsets.all(10.0)).width(double.infinity).make(),
          inviteFriend(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return contactContainer(
                  imageUrl: "assets/images/pp1.jpg",
                  username: "Alexandra Mike",
                  phoneNumber: "9800011122",
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Column inviteFriend() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: textColor, width: 0.2)), color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.plus, color: Colors.white),
              ).box.color(appColor).roundedFull.make(),
              20.widthBox,
              "Invite Friend".text.color(appColor).size(normalText).semiBold.make(),
            ],
          ),
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: appColor,
      iconTheme: const IconThemeData(color: Colors.white),
      title: "Contacts".text.white.make(),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(MdiIcons.plus),
        ),
      ],
    );
  }

  Container contactContainer({imageUrl, username, phoneNumber}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: textColor, width: 0.2)), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //profile picture
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imageUrl),
          ),
          20.widthBox,
          //username and phone number
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //username
              "$username".text.size(normalText).semiBold.color(appColor).make(),
              //phone number
              "+977-$phoneNumber".text.size(miniText).semiBold.color(textColor).overflow(TextOverflow.ellipsis).maxLines(1).make(),
            ],
          ),
        ],
      ),
    );
  }
}
