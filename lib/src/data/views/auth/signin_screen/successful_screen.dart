import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MdiIcons.checkCircle,
                size: 120,
                color: appColor,
              ).box.padding(const EdgeInsets.all(24.0)).border(color: appColor, width: 5).roundedFull.make(),
              50.heightBox,
              "Verification Successful".text.color(appColor).size(titleText).bold.make(),
              10.heightBox,
              "You can use the chat now".text.fontFamily(regular).size(smallText).make(),
              50.heightBox,
              roundedButton(title: "Enter Now", buttonColor: appColor, routeName: RouteHelper.getChatScreen(), context: context),
            ],
          ),
        ),
      ),
    );
  }
}
