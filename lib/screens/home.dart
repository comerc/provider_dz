import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dz/import.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeScreenModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            kTitle,
            style: TextStyle(
              color: model.appBarColor,
            ),
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
              color: model.containerColor,
            ),
            Switch(
              value: model.isEnabled,
              onChanged: (bool value) {
                model.isEnabled = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
