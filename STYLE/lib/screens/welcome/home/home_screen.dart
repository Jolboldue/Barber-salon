// ignore_for_file: unused_import

import 'package:barber_salon/screens/welcome/home/widgets/item_barber.dart';
import "package:barber_salon/screens/welcome/home/widgets/item_category.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barber_salon/NavBar.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var itemCategory = ItemCategory(title: 'Haircut', image: 'assets/images/haircut.png');
    // var itemCategory2 = itemCategory;
    // var itemCategory22 = itemCategory2;
    // var itemCategory222 = itemCategory22;
    return Scaffold(
      appBar: AppBar(),
      endDrawer: NavBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage('assets/images/prof5.jpg'),
              ),
              title: Text('Добро пожаловать!', style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text('Онлайн салон для регистрация!', style: Theme.of(context).textTheme.titleMedium),
              trailing: const Icon(Icons.home, size: 40),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).colorScheme.primary.withOpacity(.2),
                    spreadRadius: 5,
                    blurRadius: 5
                  )
                ]
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Искать парикмахера',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey)
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // itemCategory222,
                  ItemCategory(title: 'Shaving', image: 'assets/images/shaving.png'),
                  ItemCategory(title: 'Modeling',image: 'assets/images/modeling.png'),
                  ItemCategory(title: 'Haircut', image: 'assets/images/haircut.png'),
                  ItemCategory(title: 'Shaving', image: 'assets/images/shaving.png'),
                  ItemCategory(title: 'Modeling',image: 'assets/images/modeling.png'),
                ],
              ),
            ),
            const Column(
              children: [
                ItemBarber(title: 'Парикмахер-Алимбеков Жыргалбек (0773-394-679)', image:  'assets/images/barber9.jpg'),
                ItemBarber(title: 'Парикмахер-Бегиматов Кудайберди (0778-290-590)', image:  'assets/images/barber10.jpg'),
                ItemBarber(title: 'Парикмахер-Тагаев Орозбай (0772 104 055)',  image:  'assets/images/barber11.jpg'),
                ItemBarber(title: 'Парикмахер-Тажибаев Эрлан (0220-82-98-99)', image:  'assets/images/barber6.png'),
                ItemBarber(title: 'Парикмахер-Галбай уулу Максат (0775-93-93-38)', image:  'assets/images/barber7.jpg'),
                ItemBarber(title: 'Парикмахер-Имамалиев Ибрагим(0220-80-47-00)',  image:  'assets/images/barber8.jpg'),
                ItemBarber(title: 'Парикмахер-Аширов Жусуп (0771-109-749)',  image:  'assets/images/barber5.jpg'),
                ItemBarber(title: 'Парикмахер-Акматов Кубантай (0559-709-870)',  image:  'assets/images/barber4.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget ItemCategory({required String title, required String image}) {
  return Container();
}