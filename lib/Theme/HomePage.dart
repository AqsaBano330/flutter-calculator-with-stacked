import 'package:calculator/Theme/theme_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThemeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Dark Mode Example'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Toggle Dark Mode:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Switch(
                  value: model.isDarkMode, // Access the isDarkMode directly
                  onChanged: (value) => model.toggleTheme(),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => ThemeViewModel(),
    );
  }
}
