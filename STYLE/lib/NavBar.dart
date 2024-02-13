
import 'package:barber_salon/screens/welcome/home/widgets/call.dart';
import 'package:barber_salon/screens/settings_screen.dart';
import 'package:barber_salon/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';




class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('JYRGAL.COM'),
            accountEmail: Text('Alimbekovjyrgalbek@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/prof5.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/phon1.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Главная'),
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  WelcomeScreen()));
                },
          ),
       

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Позвонить'),
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  MyApp1()));
                },
          ),
        
          
          Divider(),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки'),
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  SettingsScreen()));
                },
          ),
          Divider(),
          ListTile(
            title: Text('Выход'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  WelcomeScreen()));
                },
          ),
        ],
      ),
    );
  }
}

