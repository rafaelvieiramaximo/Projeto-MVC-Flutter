import 'package:flutter/material.dart';
import 'package:projeto_28_04/views/home_screen.dart';
import 'package:projeto_28_04/views/second_screen.dart';
import 'package:projeto_28_04/views/third.screend.dart';
import 'package:projeto_28_04/views/fourth_screen.dart';
import 'package:projeto_28_04/views/fifth_screen.dart';

void main() {
  runApp(const Projeto_FiveScreen());
}

// ignore: camel_case_types
class Projeto_FiveScreen extends StatelessWidget {
  const Projeto_FiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padrão MVC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
      },
    );
  }
}
