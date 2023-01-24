import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes:appRoutes,
       
    );
  }

} 
