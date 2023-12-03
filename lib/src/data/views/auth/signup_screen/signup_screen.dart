import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/custom_textfield.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var _terms = false.obs;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Sign Up With Mobile Number".text.semiBold.color(appColor).align(TextAlign.center).size(titleText).make(),
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
          //check field
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: appColor,
                  value: _terms.value,
                  onChanged: (value) {
                    _terms.value = value!;
                  },
                ),
              ),
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    text: 'By Signing Up, I agree to the ',
                    style: TextStyle(
                      fontSize: smallText,
                      color: textColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          fontFamily: semibold,
                          color: appColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //sign in button
          30.heightBox,
          Obx(
            () => _terms.value
                ? roundedButton(
                    title: "Sign up",
                    buttonColor: appColor,
                    routeName: RouteHelper.getSignupProfileScreen(),
                    context: context,
                  )
                : roundedButton(
                    title: "Sign up",
                    buttonColor: textColor,
                    context: context,
                    message: "Please agree to the terms of use",
                  ),
          ),
          //dont have an account text
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Already Registered? ".text.size(smallText).fontFamily(regular).make(),
              "Sign In".text.size(smallText).semiBold.color(appColor).make().box.make().onTap(() {
                Get.toNamed(RouteHelper.getSigninScreen());
              }),
            ],
          ),
        ],
      ).box.padding(const EdgeInsets.all(16.0)).make(),
    );
  }

  //form field section`
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
