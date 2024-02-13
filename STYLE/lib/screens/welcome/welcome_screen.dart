// ignore_for_file: unused_import, unused_local_variable

import 'package:barber_salon/screens/home/home_screen.dart';
import 'package:barber_salon/screens/welcome/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 80),
            SvgPicture.asset('assets/svg/welcome.svg', height: 250),
            const SizedBox(height: 20),
            Text(
              'Забронируйте график у любимого парикмахера',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5
              )
            ),
            const SizedBox(height: 10),
            const Text(
              'Теперь вы можете записаться к любимому парикмахеру онлайн с помощью нашего приложения. Это с экономит ваше время и вам не придется стоять в очереди.',
              style: TextStyle(
                fontWeight: FontWeight.w300
              )
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white
                ),
                child: const Text('Начать'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
