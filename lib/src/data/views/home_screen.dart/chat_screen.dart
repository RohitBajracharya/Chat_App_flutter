import 'package:chat_app_flutter/src/constants/consts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        bottomNavigationBar: bottomNavigationBar(),
        body: Column(
          children: [
            searchField(),
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
        "2".text.white.size(lastMessageText).makeCentered().box.padding(const EdgeInsets.all(5.0)).color(appColor).roundedFull.make(),
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
            ).text.size(lastMessageText).semiBold.color(textColor).overflow(TextOverflow.ellipsis).maxLines(1).make(),
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

  GestureDetector searchField() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        color: appColor.withOpacity(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, color: appColor.withOpacity(0.5)),
            "Search for messages or users".text.color(appColor.withOpacity(0.5)).make(),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: appColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: "Chats".text.white.make(),
      leading: "Edit".text.white.makeCentered().onTap(() {
        Get.toNamed(RouteHelper.getEditChatScreen());
      }),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            MdiIcons.contacts,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
