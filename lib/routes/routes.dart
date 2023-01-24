import 'package:flutter/cupertino.dart';
import 'package:messenger_app_flutter/ui/screens/chat_screen.dart';
import 'package:messenger_app_flutter/ui/screens/home_screen.dart';
import 'package:messenger_app_flutter/ui/screens/loading_screen.dart';
import 'package:messenger_app_flutter/ui/screens/login_screen.dart';
import 'package:messenger_app_flutter/ui/screens/register_screen.dart';
import 'package:messenger_app_flutter/ui/screens/usuario_screen.dart';

final Map<String,Widget Function(BuildContext)> appRoutes = {
  'home': (_)=>const HomeScreen(),
  'chat': (_)=>const ChatScreen(),
  'loading': (_)=>const LoadingScreen(),
  'login': (_)=>const LoginScreen(),
  'register': (_)=>const RegisterScreen(),
  'usuario': (_)=>const UsuarioScreen(),
};