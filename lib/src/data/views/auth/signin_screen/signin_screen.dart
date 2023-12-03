import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/custom_textfield.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Sign In With Mobile Number".text.semiBold.color(appColor).align(TextAlign.center).size(titleText).make(),
          20.heightBox,
          //phone textfield
          formField(
            title: "phone",
            hintText: "9876543210",
            iconName: MdiIcons.phone,
            controller: phoneController,
            isPassword: false,
          ),
          20.heightBox,
          //password field
          formField(
            title: "password",
            hintText: "* * * * * * * ",
            iconName: MdiIcons.lock,
            controller: passwordController,
            isPassword: true,
          ),
          //sign in button
          30.heightBox,
          roundedButton(title: "Sign in", buttonColor: appColor, routeName: RouteHelper.getVerificationScreen(), context: context),
          //dont have an account text
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Don't have an account? ".text.size(smallText).fontFamily(regular).make(),
              "Sign Up".text.size(smallText).semiBold.color(appColor).make().box.make().onTap(() {
                Get.toNamed(RouteHelper.getSignupScreen());
              }),
            ],
          ),
        ],
      ).box.padding(const EdgeInsets.all(16.0)).make(),
    );
  }

  //form field section
  Widget formField({title, hintText, isPassword, iconName, controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "$title".text.uppercase.color(appColor).size(normalText).semiBold.make(),
        10.heightBox,
        customTextField(title: hintText, icon: iconName, isPassword: isPassword, controller: controller),
      ],
    );
  }
}
