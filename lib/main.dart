import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dz/import.dart';

const kTitle = 'Homework Provider';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget widget) {
        return ChangeNotifierProvider<HomeScreenModel>(
          create: (context) => HomeScreenModel(),
          child: widget,
        );
      },
      title: kTitle,
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
