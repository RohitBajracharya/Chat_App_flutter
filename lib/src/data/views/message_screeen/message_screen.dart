import '../../../constants/consts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            appBar(),
            //message area
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      receiverMessage(message: "Hi, How are you?", time: "19.24"),
                      senderMessage(message: "I'm fine, did you work?", time: "19.24"),
                      receiverMessage(message: "Yes,", time: "19.25"),
                      receiverMessage(message: "I'm working as designer", time: "19.25"),
                      senderMessage(message: "Awesome", time: "19.26"),
                      senderMessage(message: "Let's drink coffee together ^-^", time: "19.26"),
                      receiverMessage(message: "good idea", time: "19.27"),
                      senderMessage(message: "Okay", time: "19.28"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: messageTypeField(),
      ),
    );
  }

  Container senderMessage({message, time}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //message
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 220,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: appColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: "$message".text.white.make(),
              ),
              //delivered time
              "$time".text.color(Colors.black.withOpacity(0.5)).make(),
            ],
          ),
        ],
      ),
    );
  }

  Container receiverMessage({message, time}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //message
              Container(
                width: 220,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: "$message".text.make(),
              ),
              //delivered time
              "$time".text.color(Colors.black.withOpacity(0.5)).make(),
            ],
          ),
        ],
      ),
    );
  }

  //bottom nav bar
  Container messageTypeField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: double.infinity,
      height: 60,
      color: Colors.grey.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(MdiIcons.cameraOutline, color: Colors.grey, size: 36),
              10.widthBox,
              Icon(MdiIcons.attachment, color: Colors.grey, size: 36),
            ],
          ),
          10.widthBox,
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type Message...",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          10.widthBox,
          Icon(MdiIcons.microphoneOutline, color: Colors.white).box.padding(const EdgeInsets.all(5.0)).color(appColor).roundedFull.make(),
        ],
      ),
    );
  }

  //appbar
  Widget appBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      height: 60,
      color: appColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(MdiIcons.arrowLeft, color: Colors.white).onTap(() {
                Get.back();
              }),
              10.widthBox,
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/pp1.jpg"),
              ),
            ],
          ),
          Column(
            children: [
              "Natalie Hadon".text.white.size(smallText).semiBold.make(),
              "Online".text.white.size(8.0).make(),
            ],
          ),
          Row(
            children: [
              Icon(MdiIcons.videoOutline, color: Colors.white),
              10.widthBox,
              Icon(MdiIcons.phoneOutline, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
