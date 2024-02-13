
import 'package:barber_salon/screens/welcome/home/widgets/calls.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// ignore: must_be_immutable
class MyApp1  extends StatelessWidget{

  GlobalKey<FormState> formkey = GlobalKey();

  MyApp1({super.key});
  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Поле телефона"),
        ),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
         child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Имя клиента",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Электронная почта",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Нажмите последнюю кнопку",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 11),
              // Phone Field With Country Code
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: "Номер телефона",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (_) =>  MyApp3()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Нажмите эту кнопку",
                 style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                 ),
                ),
              ),
              ),
            ],
          ),
         ),
       ),
      ),
    );
  }
}