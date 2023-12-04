import 'package:chat_app_flutter/src/constants/consts.dart';
import 'package:chat_app_flutter/src/data/views/auth/auth_page.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/signin_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/successful_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signin_screen/verification_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signup_screen/signup_profile_screen.dart';
import 'package:chat_app_flutter/src/data/views/auth/signup_screen/signup_screen.dart';
import 'package:chat_app_flutter/src/data/views/camera_screen/camera_screen.dart';
import 'package:chat_app_flutter/src/data/views/contact_screen/contact_screen.dart';
import 'package:chat_app_flutter/src/data/views/home_screen.dart/chat_screen.dart';
import 'package:chat_app_flutter/src/data/views/home_screen.dart/edit_chat_screen.dart';
import 'package:chat_app_flutter/src/data/views/message_screeen/message_screen.dart';
import 'package:chat_app_flutter/src/data/views/phone_screen.dart/phone_screen.dart';
import 'package:chat_app_flutter/src/data/views/profile_screen.dart/edit_profile_screen.dart';
import 'package:chat_app_flutter/src/data/views/profile_screen.dart/profile_screen.dart';
import 'package:chat_app_flutter/src/data/views/splash_screen/splash_screen.dart';

class RouteHelper {
  static const String _initial = "/";
  static const String _authScreen = "/auth";
  static const String _signinScreen = "/signin";
  static const String _signupScreen = "/signup";
  static const String _verificationScreen = "/verification";
  static const String _successfulScreen = "/successful";
  static const String _signupProfileScreen = "/signupprofile";
  static const String _chatScreen = "/home";
  static const String _editChatsScreen = "/edit-chats";
  static const String _contactScreen = "/contacts";
  static const String _messageScreen = "/messages";
  static const String _phoneScreen = "/phone";
  static const String _cameraScreen = "/camera";
  static const String _profileScreen = "/profile";
  static const String _editProfileScreen = "/edit-profile";

  static String getInitial() => _initial;
  static String getAuthScreen() => _authScreen;
  static String getSigninScreen() => _signinScreen;
  static String getSignupScreen() => _signupScreen;
  static String getVerificationScreen() => _verificationScreen;
  static String getSuccessfulScreen() => _successfulScreen;
  static String getSignupProfileScreen() => _signupProfileScreen;
  static String getChatScreen() => _chatScreen;
  static String getEditChatScreen() => _editChatsScreen;
  static String getContactScreen() => _contactScreen;
  static String getMessageScreen() => _messageScreen;
  static String getPhoneScreen() => _phoneScreen;
  static String getCameraScreen() => _cameraScreen;
  static String getProfileScreen() => _profileScreen;
  static String getEditProfileScreen() => _editProfileScreen;

  static List<GetPage> routes = [
    //splash screen
    GetPage(name: _initial, page: () => const SplashScreen()),
    //auth screen
    GetPage(name: _authScreen, page: () => const AuthScreen()),
    //sign in screen
    GetPage(name: _signinScreen, page: () => const SigninScreen()),
    //sign up screen
    GetPage(name: _signupScreen, page: () => const SignupScreen()),
    //verification screen
    GetPage(name: _verificationScreen, page: () => const VerificationScreen()),
    //successful screen
    GetPage(name: _successfulScreen, page: () => const SuccessfulScreen()),
    //signup profile screen
    GetPage(name: _signupProfileScreen, page: () => const SignupProfileScreen()),
    //chat screen
    GetPage(name: _chatScreen, page: () => const ChatScreen()),
    //edit chat screen
    GetPage(name: _editChatsScreen, page: () => const EditChatScreen()),
    //contact screen
    GetPage(name: _contactScreen, page: () => const ContactScreen()),
    //message screen
    GetPage(name: _messageScreen, page: () => const MessageScreen()),
    //phone screen
    GetPage(name: _phoneScreen, page: () => const PhoneScreen()),
    //camera screen
    GetPage(name: _cameraScreen, page: () => const CameraScreen()),
    //profile screen
    GetPage(name: _profileScreen, page: () => const ProfileScreen()),
    //edit profile screen
    GetPage(name: _editProfileScreen, page: () => const EditProfileScreen()),
  ];
}
