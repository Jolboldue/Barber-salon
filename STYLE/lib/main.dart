// ignore_for_file: unused_import

import 'package:barber_salon/Views/homes.dart';
import 'package:barber_salon/screens/welcome/home/widgets/home_page.dart';
import 'package:barber_salon/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'package:flutter/services.dart';
import 'package:barber_salon/screens/settings_screen.dart';
import 'package:barber_salon/screens/welcome/home/widgets/settings_tile.dart';
import 'package:barber_salon/screens/home.dart';
import 'package:barber_salon/Provider/provider.dart';
import 'package:provider/provider.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 40, 36, 144)),
        useMaterial3: true
      ),
      home: const WelcomeScreen()
    
    );
  }
}
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Регистрация',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsScreen(),
    );
  }
}


class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>UiProvider()..init(),
      child: Consumer<UiProvider>(
        builder: (context, UiProvider notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dark Theme',
            //By default theme setting, you can also set system
            // when your mobile theme is dark the app also become dark

            themeMode: notifier.isDark? ThemeMode.dark : ThemeMode.light,

            //Our custom theme applied
            darkTheme: notifier.isDark? notifier.darkTheme : notifier.lightTheme,

            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Settings(),
          );
        }
      ),
    );
  }
}
// My comment