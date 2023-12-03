import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/bottom_navbar.dart';
import 'package:chat_app_flutter/src/widgets/search_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        bottomNavigationBar: bottomNavigationBar(),
        body: Column(
          children: [
            searchField("Search for messages or users"),
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

  Widget messageContainer() {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 30,
        ),
      ),
      onDismissed: (direction) {
        VxToast.show(context, msg: "Chat Deleted");
      },
      child: Container(
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
      ).onTap(() {
        Get.toNamed(RouteHelper.getMessageScreen());
      }),
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
      automaticallyImplyLeading: false,
      title: "Chats".text.white.make(),
      leading: "Edit".text.white.makeCentered().onTap(() {
        Get.toNamed(RouteHelper.getEditChatScreen());
      }),
      actions: [
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteHelper.getContactScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              MdiIcons.contacts,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
