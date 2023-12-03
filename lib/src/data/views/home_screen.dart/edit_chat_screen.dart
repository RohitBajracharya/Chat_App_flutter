import 'package:chat_app_flutter/src/constants/consts.dart';

class EditChatScreen extends StatefulWidget {
  const EditChatScreen({super.key});

  @override
  State<EditChatScreen> createState() => _EditChatScreenState();
}

class _EditChatScreenState extends State<EditChatScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        bottomNavigationBar: bottomNavigationBar(),
        body: Column(
          children: [
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
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 2,
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.messageOutline, color: _currentIndex == 0 ? appColor : textColor),
          label: "Message",
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.phoneOutline, color: _currentIndex == 1 ? appColor : textColor),
          label: "Call",
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.cameraOutline, color: _currentIndex == 2 ? appColor : textColor),
          label: "Camera",
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.accountOutline, color: _currentIndex == 3 ? appColor : textColor),
          label: "User",
        ),
      ],
    );
  }

  Container messageContainer() {
    var isChecked = false.obs;
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: textColor, width: 0.2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //checkbox
          Obx(
            () => Checkbox(
              activeColor: appColor,
              value: isChecked.value,
              onChanged: (value) {
                isChecked.value = value!;
              },
            ),
          ),
          //profile picture
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/pp1.jpg"),
          ),
          20.widthBox,
          //username and last message and delivered icon
          usernameLastmsgIcon(),
          const Spacer(),
          //msg time and no of message
          noOfMsgNTime(),
        ],
      ),
    );
  }

  Column noOfMsgNTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //msg time
        "20.53".text.semiBold.color(appColor).make(),
        //no of message
        "2".text.white.size(miniText).makeCentered().box.padding(const EdgeInsets.all(5.0)).color(appColor).roundedFull.make(),
      ],
    );
  }

  Column usernameLastmsgIcon() {
    String msg = "Hello my name is Dierdre Jhon. How are you?";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //username
        "Deirdre Jhon".text.size(normalText).semiBold.color(appColor).make(),
        //last message and delivered icon
        Row(
          children: [
            // last message
            Text(
              msg.length <= 20 ? msg : '${msg.substring(0, 20)}...',
            ).text.size(miniText).semiBold.color(textColor).overflow(TextOverflow.ellipsis).maxLines(1).make(),
            10.widthBox,
            //delivered icon
            Icon(
              MdiIcons.checkAll,
              size: 16,
              color: appColor,
            ),
          ],
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: appColor,
      centerTitle: true,
      title: "Edits Chats".text.white.make(),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Icon(MdiIcons.delete),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Icon(MdiIcons.dotsVertical),
        ),
      ],
    );
  }
}
