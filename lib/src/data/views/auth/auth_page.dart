import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/widgets/rounded_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //icon
            Icon(
              MdiIcons.accountPlus,
              size: 120,
              color: appColor,
            ).box.padding(const EdgeInsets.all(24.0)).border(color: appColor, width: 5).roundedFull.make(),
            20.heightBox,
            //signup and signin text
            "Sign In / Sign Up".text.size(titleText).color(appColor).fontFamily(bold).make(),
            20.heightBox,
            //signin button
            roundedButton(title: "Sign in", buttonColor: appColor, routeName: RouteHelper.getSigninScreen()),
            20.heightBox,
            //sign up button
            roundedButton(title: "Sign up", buttonColor: secondaryColor, routeName: RouteHelper.getSignupScreen()),
          ],
        ),
      ),
    );
  }
}
