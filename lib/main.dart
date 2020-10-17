import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyColor>(
      create: (context) => MyColor(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title = "Flutter Demo Home Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.title,
          style: TextStyle(
            color: context.watch<MyColor>().getAppBarColor,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 150,
              height: 150,
              duration: Duration(milliseconds: 300),
              color: context.watch<MyColor>().getAnimatedContainerColor,
            ),
            Switch(
              value: context.watch<MyColor>().isSwitchedValue,
              onChanged: (value) {
                context.read<MyColor>().changeColors(value);
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
