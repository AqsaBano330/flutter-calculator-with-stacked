import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app_new/app/app.router.dart';
import 'package:stacked_app_new/screens/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home Screen"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewModel.gotoProfileScreen();
                  },
                  child: const Text("Navigate to Profile"),
                ),
                Text(viewModel.counterValue),
                ElevatedButton(
                  onPressed: () {
                    viewModel.addValue();
                  },
                  child: const Text("Add counter Value"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
