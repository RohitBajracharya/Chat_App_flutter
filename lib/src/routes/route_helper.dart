import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/data/views/auth/auth_page.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/signin_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/successful_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/verification_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signup_screen/signup_profile_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signup_screen/signup_screen.dart';
import 'package:chat_app_flutter/src/data/views/home_screen.dart/chat_screen.dart';
import 'package:chat_app_flutter/src/data/views/home_screen.dart/edit_chat_screen.dart';
import 'package:chat_app_flutter/src/data/views/splash_screen/splash_screen.dart';

class RouteHelper {
  static const String initial = "/";
  static const String authScreen = "/auth";
  static const String signinScreen = "/signin";
  static const String signupScreen = "/signup";
  static const String verificationScreen = "/verification";
  static const String successfulScreen = "/successful";
  static const String signupProfileScreen = "/signupprofile";
  static const String chatScreen = "/home";
  static const String editChatsScreen = "/edit-chats";

  static String getInitial() => initial;
  static String getAuthScreen() => authScreen;
  static String getSigninScreen() => signinScreen;
  static String getSignupScreen() => signupScreen;
  static String getVerificationScreen() => verificationScreen;
  static String getSuccessfulScreen() => successfulScreen;
  static String getSignupProfileScreen() => signupProfileScreen;
  static String getChatScreen() => chatScreen;
  static String getEditChatScreen() => editChatsScreen;

  static List<GetPage> routes = [
    //splash screen
    GetPage(name: initial, page: () => const SplashScreen()),
    //auth screen
    GetPage(name: authScreen, page: () => const AuthScreen()),
    //sign in screen
    GetPage(name: signinScreen, page: () => const SigninScreen()),
    //sign up screen
    GetPage(name: signupScreen, page: () => const SignupScreen()),
    //verification screen
    GetPage(name: verificationScreen, page: () => const VerificationScreen()),
    //successful screen
    GetPage(name: successfulScreen, page: () => const SuccessfulScreen()),
    //signup profile screen
    GetPage(name: signupProfileScreen, page: () => const SignupProfileScreen()),
    //chat screen
    GetPage(name: chatScreen, page: () => const ChatScreen()),
    //edit chat screen
    GetPage(name: editChatsScreen, page: () => const EditChatScreen()),
  ];
}
