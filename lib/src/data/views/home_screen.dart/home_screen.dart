import 'package:chat_app_flutter/src/constants/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: "Mitho Guff".text.make(),
        ),
      ),
    );
  }
}
