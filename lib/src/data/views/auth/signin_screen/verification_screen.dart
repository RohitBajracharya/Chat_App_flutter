import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //text
          Center(
            child: Column(
              children: [
                "Verification Code".text.color(appColor).bold.size(titleText).make(),
                "SMS Verification code has been sent to : ".text.size(smallText).make(),
                "9876543210".text.color(appColor).size(normalText).semiBold.make(),
              ],
            ),
          ),
          20.heightBox,
          //verification code section
          verificationCodeSection().box.margin(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0)).width(double.infinity).make(),
          20.heightBox,
          //next button
          roundedButton(title: "next", buttonColor: appColor, routeName: RouteHelper.getSuccessfulScreen(), context: context),
        ],
      ).box.margin(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0)).make(),
    );
  }

  Column verificationCodeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Enter code".text.uppercase.color(appColor).size(normalText).semiBold.make(),
        VerificationCode(
          keyboardType: TextInputType.number,
          underlineColor: appColor,
          length: 4,
          cursorColor: Colors.blue,
          isSecure: true,
          margin: const EdgeInsets.only(right: 16),
          onCompleted: (String value) {
            // setState(() {
            //   _code = value;
            // });
          },
          onEditing: (bool value) {
            // setState(() {
            //   _onEditing = value;
            // });
            // if (!_onEditing) FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }
}
