import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


class MyApp3 extends StatefulWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp3> {
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "0773 394 679";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Позвоните парикмахерам'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Номер телефона"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text("ПОЗВОНИТЬ"),
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
              },
            )
          ],
        ),
      ),
    );
  }
}