import '../../../constants/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  changeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.toNamed(RouteHelper.getAuthScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //app logo
              appLogo(),
              //app name
              appname.text.fontFamily(bold).size(50).color(appColor).make(),
              //app version
              appversion.text.fontFamily(regular).size(18).color(textColor).make(),
            ],
          ),
        ),
      ),
    );
  }

  //app logo
  Container appLogo() {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: appColor,
          width: 5,
        ),
      ),
      child: Icon(MdiIcons.forum, color: appColor, size: 120),
    );
  }
}
