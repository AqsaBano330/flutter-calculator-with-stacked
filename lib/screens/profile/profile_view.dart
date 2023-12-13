import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app_new/screens/profile/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Profile Screen"),
          ),
          body: Center(
            child: Column(
              children: [

                ElevatedButton(
                  onPressed: () {
                    viewModel.gotohomeScreen();
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
