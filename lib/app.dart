import 'package:flutter/material.dart';
import 'package:hub/pages/home_page.dart';

class FlutterStarterHupApp extends StatelessWidget{
  const FlutterStarterHupApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter Starter Hub",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xfff5f7fb),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff4f46e5),
        ),
      ),
      home: HomePage(),
    );
  }
}