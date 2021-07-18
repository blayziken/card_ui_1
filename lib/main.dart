import 'package:card_ui/widget/card_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width: 600,
        child: CardWidget(
          name: 'OLUYIPE TOLUWALOPE',
          amount: 'N10,000.00',
          expiry: '07/07/2022',
        ),
      ),
    );
  }
}
