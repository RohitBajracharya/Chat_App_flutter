import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';
import 'package:image_picker/image_picker.dart';

class SignupProfileScreen extends StatefulWidget {
  const SignupProfileScreen({super.key});

  @override
  State<SignupProfileScreen> createState() => _SignupProfileScreenState();
}

class _SignupProfileScreenState extends State<SignupProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();

    void showBottomSheetContainer() {
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 220,
            child: Column(
              children: [
                //take picture
                GestureDetector(
                  onTap: () async {
                    final img = await ImagePicker().pickImage(source: ImageSource.camera);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Take Picture",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColor,
                        fontSize: subtitleText,
                        fontFamily: semibold,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: textColor,
                  height: 0.0001,
                ),
                //select picture
                GestureDetector(
                  onTap: () async {
                    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Select Picture",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColor,
                        fontSize: subtitleText,
                        fontFamily: semibold,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: textColor,
                  height: 10,
                ),
                //cancel
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Text(
                      "Cancel",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColor,
                        fontSize: subtitleText,
                        fontFamily: semibold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //icon
          Column(
            children: [
              GestureDetector(
                onTap: showBottomSheetContainer,
                child: Icon(
                  MdiIcons.account,
                  color: appColor,
                  size: 120,
                ).box.border(color: appColor, width: 5).roundedFull.make(),
              ),
              15.heightBox,
              "Choose your Profile picture".text.align(TextAlign.center).color(textColor).fontFamily(regular).size(smallText).make(),
            ],
          ),
          30.heightBox,
          //textfield
          nameTextfield(nameController),
          //complete profile text
          30.heightBox,
          "Complete your profile so that your friends can recognize you".text.align(TextAlign.center).color(textColor).fontFamily(regular).size(smallText).make(),
          30.heightBox,
          //sign up button
          roundedButton(
            buttonColor: appColor,
            context: context,
            title: "Sign up",
            routeName: RouteHelper.getHomeScreen(),
          ),
        ],
      ).box.padding(const EdgeInsets.all(32.0)).makeCentered(),
    );
  }

  Widget nameTextfield(TextEditingController nameController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Your Name".text.size(subtitleText).semiBold.color(appColor).make(),
        TextField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: "Rohit Bajra",
            hintStyle: TextStyle(fontSize: normalText),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appColor)),
          ),
        ),
      ],
    );
  }
}
