import 'package:barber_salon/Views/homes.dart';
import 'package:barber_salon/screens/welcome/home/widgets/home_page.dart';
import 'package:barber_salon/screens/welcome/home/widgets/settings_tile.dart';
import 'package:barber_salon/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Настройки",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
             
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Ionicons.pencil_outline,
                title: "Редактировать",
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomePage()));
                },
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.black,
                icon: Ionicons.moon_outline,
                title: "Тема",
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (_) =>  Settings ()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.purple,
                icon: Ionicons.language_outline,
                title: "Язык",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.log_out_outline,
                title: "Выйти",
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (_) =>  WelcomeScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}